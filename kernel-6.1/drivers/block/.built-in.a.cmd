cmd_drivers/block/built-in.a := rm -f drivers/block/built-in.a;  printf "drivers/block/%s " brd.o loop.o zram/built-in.a | xargs llvm-ar cDPrST drivers/block/built-in.a
