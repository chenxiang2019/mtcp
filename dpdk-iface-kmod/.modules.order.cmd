cmd_/home/chenxiang/mtcp/dpdk-iface-kmod/modules.order := {   echo /home/chenxiang/mtcp/dpdk-iface-kmod/dpdk_iface.ko; :; } | awk '!x[$$0]++' - > /home/chenxiang/mtcp/dpdk-iface-kmod/modules.order
