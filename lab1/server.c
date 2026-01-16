#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>

#include <pthread.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <arpa/inet.h>

#define MAX_QUEUE 1024     // 任务队列最大长度
#define WORKER_NUM 4       // 线程池线程数量
#define BUF_SIZE 1024

//任务队列结构
typedef struct {
    int fds[MAX_QUEUE];
    int front;
    int rear;
    int size;

    pthread_mutex_t mutex;
    pthread_cond_t cond;
} task_queue_t;

// 初始化队列
void queue_init(task_queue_t *q) {
    q->front = 0;
    q->rear = 0;
    q->size = 0;
    pthread_mutex_init(&q->mutex, NULL);
    pthread_cond_init(&q->cond, NULL);
}

// 入队
void queue_push(task_queue_t *q, int fd) {
    pthread_mutex_lock(&q->mutex);

    if (q->size == MAX_QUEUE) {
        // 队列满了，简单处理：直接丢弃连接
        printf("[WARN] task queue full, drop client fd=%d\n", fd);
        close(fd);
        pthread_mutex_unlock(&q->mutex);
        return;
    }

    q->fds[q->rear] = fd;
    q->rear = (q->rear + 1) % MAX_QUEUE;
    q->size++;

    // 通知 worker 线程有新任务
    pthread_cond_signal(&q->cond);
    pthread_mutex_unlock(&q->mutex);
}

// 出队（若队列空则等待）
int queue_pop(task_queue_t *q) {
    pthread_mutex_lock(&q->mutex);

    while (q->size == 0) {
        pthread_cond_wait(&q->cond, &q->mutex);
    }

    int fd = q->fds[q->front];
    q->front = (q->front + 1) % MAX_QUEUE;
    q->size--;

    pthread_mutex_unlock(&q->mutex);
    return fd;
}

// 客户端处理逻辑,工作线程处理客户端连接
void handle_client(int client_fd) {
    char buf[BUF_SIZE];

    // 通过 fd 获取对端（客户端）IP/端口
    struct sockaddr_in peer_addr;
    socklen_t peer_len = sizeof(peer_addr);
    char ip[INET_ADDRSTRLEN];
    int port = -1;

    if (getpeername(client_fd, (struct sockaddr*)&peer_addr, &peer_len) == 0) {
        inet_ntop(AF_INET, &peer_addr.sin_addr, ip, sizeof(ip));
        port = ntohs(peer_addr.sin_port);
    } else {
        strcpy(ip, "unknown");
    }

    printf("[INFO] handling client %s:%d (fd=%d)\n", ip, port, client_fd);

    while (1) {
        memset(buf, 0, sizeof(buf));
        int n = read(client_fd,buf,255);

        if (n > 0) {
            printf("[%s:%d fd=%d] %s\n", ip, port, client_fd, buf);

            // 回显（echo）
            send(client_fd, buf, n, 0);
        } else if (n == 0) {
            printf("[INFO] client %s:%d disconnected (fd=%d)\n", ip, port, client_fd);
            break;
        } else {
            perror("[ERROR] write");
            break;
        }
    }

    close(client_fd);
}

//worker 线程函数
typedef struct {
    task_queue_t *queue;
} worker_arg_t;

void *worker_thread(void *arg) {
    worker_arg_t *warg = (worker_arg_t *)arg;
    task_queue_t *queue = warg->queue;

    while (1) {
        int client_fd = queue_pop(queue);
        handle_client(client_fd);
    }
    return NULL;
}

// ===================== 主函数：启动 server =====================
int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Usage: %s <port>\n", argv[0]);
        return 1;
    }

    int port = atoi(argv[1]);

    // 1. 创建监听 socket
    int listen_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (listen_fd < 0) {
        perror("socket");
        return 1;
    }

    // 端口复用
    int opt = 1;
    setsockopt(listen_fd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt));

    // 2. bind
    struct sockaddr_in serv_addr;
    memset(&serv_addr, 0, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = INADDR_ANY;
    serv_addr.sin_port = htons(port);

    if (bind(listen_fd, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0) {
        perror("bind");
        close(listen_fd);
        return 1;
    }

    // 3. listen
    if (listen(listen_fd, 128) < 0) {
        perror("listen");
        close(listen_fd);
        return 1;
    }

    printf("[INFO] Server listening on port %d...\n", port);

    // 4. 初始化任务队列
    task_queue_t queue;
    queue_init(&queue);

    // 5. 启动线程池
    pthread_t workers[WORKER_NUM];
    worker_arg_t warg;
    warg.queue = &queue;

    for (int i = 0; i < WORKER_NUM; i++) {
        pthread_create(&workers[i], NULL, worker_thread, &warg);
    }

    // 6. 主线程 accept 新连接并加入任务队列
    while (1) {
        struct sockaddr_in cli_addr;
        socklen_t cli_len = sizeof(cli_addr);

        int client_fd = accept(listen_fd, (struct sockaddr *)&cli_addr, &cli_len);
        if (client_fd < 0) {
            perror("accept");
            continue;
        }

        printf("[INFO] new client connected: %s:%d (fd=%d)\n",
               inet_ntoa(cli_addr.sin_addr),
               ntohs(cli_addr.sin_port),
               client_fd);

        queue_push(&queue, client_fd);
    }

    close(listen_fd);
    return 0;
}
