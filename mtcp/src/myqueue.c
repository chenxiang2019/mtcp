#include "myqueue.h"
#include <string.h>

#define LENGTH 1024*64
char myqueue_mac[LENGTH][ETH_ALEN];
int front;
int tail;

void myq_modify_hdr(struct ethhdr* header)
{
	if(front >= tail) return ;
	memcpy(header->h_source, myqueue_mac[front], ETH_ALEN);
	front ++;
	if(front == LENGTH) front = 0;
}

void myq_storage_hdr(struct ethhdr* header)
{
	int pos = tail ++;
	if(tail == LENGTH) tail = 0;
	memcpy(myqueue_mac[pos], header->h_source, ETH_ALEN);
}
