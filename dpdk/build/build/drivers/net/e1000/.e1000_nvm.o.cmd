cmd_e1000_nvm.o = gcc -Wp,-MD,./.e1000_nvm.o.d.tmp  -m64 -pthread -I/home/chenxiang/f-stack/dpdk/lib/librte_eal/linux/eal/include  -march=native -DRTE_MACHINE_CPUFLAG_SSE -DRTE_MACHINE_CPUFLAG_SSE2 -DRTE_MACHINE_CPUFLAG_SSE3 -DRTE_MACHINE_CPUFLAG_SSSE3 -DRTE_MACHINE_CPUFLAG_SSE4_1 -DRTE_MACHINE_CPUFLAG_SSE4_2 -DRTE_MACHINE_CPUFLAG_AES -DRTE_MACHINE_CPUFLAG_PCLMULQDQ -DRTE_MACHINE_CPUFLAG_AVX -DRTE_MACHINE_CPUFLAG_RDRAND -DRTE_MACHINE_CPUFLAG_RDSEED -DRTE_MACHINE_CPUFLAG_FSGSBASE -DRTE_MACHINE_CPUFLAG_F16C -DRTE_MACHINE_CPUFLAG_AVX2  -I/home/chenxiang/f-stack/dpdk/build/include -DRTE_USE_FUNCTION_VERSIONING -include /home/chenxiang/f-stack/dpdk/build/include/rte_config.h -D_GNU_SOURCE -O3 -W -Wall -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wold-style-definition -Wpointer-arith -Wcast-align -Wnested-externs -Wcast-qual -Wformat-nonliteral -Wformat-security -Wundef -Wwrite-strings -Wdeprecated -Wimplicit-fallthrough=2 -Wno-format-truncation -Wno-address-of-packed-member -DALLOW_EXPERIMENTAL_API -Wno-uninitialized -Wno-unused-parameter -Wno-unused-variable -Wno-misleading-indentation -Wno-implicit-fallthrough   -o e1000_nvm.o -c /home/chenxiang/f-stack/dpdk/drivers/net/e1000/base/e1000_nvm.c 
