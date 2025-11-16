cmd_drivers/rpmsg/built-in.a := rm -f drivers/rpmsg/built-in.a;  printf "drivers/rpmsg/%s " rpmsg_core.o rockchip_rpmsg_softirq.o | xargs llvm-ar cDPrST drivers/rpmsg/built-in.a
