#include <mtcp_api.h>
#include <stdio.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <string.h>
#include <netinet/in.h>

int generateSock(mctx_t ctx)
{
	return mtcp_socket(ctx, AF_INET, SOCK_STREAM, 0);
}

int startListen(mctx_t ctx, int sockid)
{
	struct sockaddr_in sock;
	// bzero(&sock, sizeof(sock));
	sock.sin_family = AF_INET;
	sock.sin_port = htons(800);
	sock.sin_addr.s_addr = INADDR_ANY; //inet_addr("0.0.0.0");
	return mtcp_bind(ctx, sockid, (struct sockaddr *)&sock, sizeof(struct sockaddr));	
}

void solve(mctx_t ctx, int sockid)
{
	char buff[1024];
	int len = mtcp_read(ctx, sockid, buff, 1024);
	if(len == -1)
		return ;
	buff[len] = '\0';
	int round = atoi(buff);
	while((round --) > 0){
		mtcp_write(ctx, sockid, buff, strlen(buff)+1);
		int offset = 0;
		int res = 0;
		while((res = mtcp_read(ctx, sockid, buff+offset, 1024-offset)) > 0)
			offset += res;
		buff[offset] = '\0';
	}
}

int main()
{
	int result = mtcp_init("config.conf");
	if(result == 0){
		mctx_t ctx = mtcp_create_context(0);
		int listener = generateSock(ctx);
		if(listener != -1){
			int listen_result = startListen(ctx, listener);
			if(listen_result != -1){
				mtcp_listen(ctx, listener, 1024);
				while(1){
					struct sockaddr_in client;
					socklen_t client_size = sizeof(client);
					int client_sock = mtcp_accept(ctx, listener, (struct sockaddr*)&client, &client_size);
					if(client_sock != -1){
						solve(ctx, client_sock);
						mtcp_close(ctx, client_sock);
					}
				}
			}
			mtcp_close(ctx, listener);
		}
		mtcp_destroy_context(ctx);
	}
	mtcp_destroy();
	
	return 0;
}
