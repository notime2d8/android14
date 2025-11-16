cmd_drivers/block/zram/built-in.a := rm -f drivers/block/zram/built-in.a;  printf "drivers/block/zram/%s " zcomp.o zram_drv.o | xargs llvm-ar cDPrST drivers/block/zram/built-in.a
