cmd_linux/pci_uio.o = gcc -Wp,-MD,linux/.pci_uio.o.d.tmp  -I/home/chenxiang/f-stack/dpdk/drivers/bus/pci -m64 -pthread -I/home/chenxiang/f-stack/dpdk/lib/librte_eal/linux/eal/include  -march=native -DRTE_MACHINE_CPUFLAG_SSE -DRTE_MACHINE_CPUFLAG_SSE2 -DRTE_MACHINE_CPUFLAG_SSE3 -DRTE_MACHINE_CPUFLAG_SSSE3 -DRTE_MACHINE_CPUFLAG_SSE4_1 -DRTE_MACHINE_CPUFLAG_SSE4_2 -DRTE_MACHINE_CPUFLAG_AES -DRTE_MACHINE_CPUFLAG_PCLMULQDQ -DRTE_MACHINE_CPUFLAG_AVX -DRTE_MACHINE_CPUFLAG_RDRAND -DRTE_MACHINE_CPUFLAG_RDSEED -DRTE_MACHINE_CPUFLAG_FSGSBASE -DRTE_MACHINE_CPUFLAG_F16C -DRTE_MACHINE_CPUFLAG_AVX2  -I/home/chenxiang/f-stack/dpdk/build/include -DRTE_USE_FUNCTION_VERSIONING -include /home/chenxiang/f-stack/dpdk/build/include/rte_config.h -D_GNU_SOURCE -O3 -W -Wall -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wold-style-definition -Wpointer-arith -Wcast-align -Wnested-externs -Wcast-qual -Wformat-nonliteral -Wformat-security -Wundef -Wwrite-strings -Wdeprecated -Wimplicit-fallthrough=2 -Wno-format-truncation -Wno-address-of-packed-member -DALLOW_EXPERIMENTAL_API -I/home/chenxiang/f-stack/dpdk/drivers/bus/pci/linux -I/home/chenxiang/f-stack/dpdk/lib/librte_eal/common -DALLOW_EXPERIMENTAL_API    -o linux/pci_uio.o -c /home/chenxiang/f-stack/dpdk/drivers/bus/pci/linux/pci_uio.c 
