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

int main(int argc, char *argv[])
{
    int sockfd, newsockfd, portno, clilen;
    char buffer[256];
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
    newsockfd = accept(sockfd, (struct sockaddr *) &cli_addr, &clilen);
    if (newsockfd < 0) 
        error("ERROR on accept");
    
    // 客户端 IP 和端口
	char client_ip[INET_ADDRSTRLEN];
	inet_ntop(AF_INET, &(cli_addr.sin_addr), client_ip, INET_ADDRSTRLEN);
	int client_port = ntohs(cli_addr.sin_port);

	printf("Client connected: %s:%d\n", client_ip, client_port);

    while (1) {
        bzero(buffer, 256);
        n = read(newsockfd, buffer, 255);

        if (n < 0) {
            error("ERROR reading from socket");
        }
        if (n == 0) {
            // ✅ 客户端关闭连接
            printf("Client disconnected.\n");
            break;
        }
        printf("Client says: %s\n", buffer);

        // ✅ 回发一条确认消息
        n = write(newsockfd, "I got your message", 18);
        if (n < 0)
            error("ERROR writing to socket");
    }
    close(newsockfd);
    close(sockfd);
    return 0; 
}
