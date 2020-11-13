#ifndef H_MYQUEUE
#define H_MYQUEUE
#include "mtcp.h"
#include "ps.h"
#include "ip_in.h"
//#include "eth_in.h"
#include "arp.h"
#include "debug.h"
//#include "ps.h"
//#include "ip_in.h"
void myq_modify_hdr(struct ethhdr* header);
void myq_storage_hdr(struct ethhdr* header);

#endif

