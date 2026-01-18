/* A simple server in the internet domain using TCP
   The port number is passed as an argument */
#include <stdio.h>
#include <stdlib.h>     // exit, atoi
#include <string.h>     // bzero
#include <unistd.h>     // read, write, close
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>      // struct hostent, gethostbyname
#include <strings.h>    // bzero, bcopy  (或你改用 memset/memcpy 就不需要它)
#include <arpa/inet.h>  

void error(char *msg)
{
    perror(msg);
    exit(1);
}
/*
argc是参数个数
argv[0]是可执行程序本身
argv[1] = port
server默认使用本机ip
*/
void dostuff(int newsockfd){
    char buffer[256];
    while(1){
        bzero(buffer, 256);
        int n = read(newsockfd, buffer, 255);

        if (n < 0) {
            error("ERROR reading from socket");
        }
        if (n == 0) {
            // 客户端关闭连接
            printf("Client disconnected.\n");
            return;
        }
        printf("Client says: %s\n", buffer);

        // 回发一条确认消息
        n = write(newsockfd, "I got your message", 18);
        if (n < 0)
            error("ERROR writing to socket");
    }
}

int main(int argc, char *argv[])
{
    int sockfd, newsockfd, portno, clilen;
    struct sockaddr_in serv_addr, cli_addr;
    int n;
    if (argc < 2) {
        fprintf(stderr,"ERROR, no port provided\n");
        exit(1);
    }
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) 
    error("ERROR opening socket");

    bzero((char *) &serv_addr, sizeof(serv_addr));
    portno = atoi(argv[1]);
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = INADDR_ANY;
    serv_addr.sin_port = htons(portno);

    if (bind(sockfd, (struct sockaddr *) &serv_addr,
            sizeof(serv_addr)) < 0) 
            error("ERROR on binding");

    listen(sockfd,5);

    clilen = sizeof(cli_addr);
    
    
    // 客户端 IP 和端口
	// char client_ip[INET_ADDRSTRLEN];
	// inet_ntop(AF_INET, &(cli_addr.sin_addr), client_ip, INET_ADDRSTRLEN);
	// int client_port = ntohs(cli_addr.sin_port);
	// printf("Client connected: %s:%d\n", client_ip, client_port);

    while (1) {
        newsockfd = accept(sockfd, (struct sockaddr *) &cli_addr, &clilen);
        if (newsockfd < 0) 
            error("ERROR on accept");

        pid_t pid = fork();
        // 每来一个客户端连接，就 fork 一个子进程去服务它
        // 父进程继续 accept() 等下一个客户端
        // 父进程和子进程的pid不同
        // 子进程会复制父进程里的所有资源，包括文件描述符
        if (pid < 0) 
            error("ERROR on fork");
        if (pid == 0) { // pid == 0在子进程中pid返回0，表示当前代码在子进程中运行
            close(sockfd); // 子进程不需要监听 socket
            dostuff(newsockfd);
            break;
        } else { // pid > 0（在父进程中fork返回子进程的进程号）
            close(newsockfd); // 父进程不需要和客户端通信
        }
    }
    close(newsockfd);
    close(sockfd);
    return 0; 
}
