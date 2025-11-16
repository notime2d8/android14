cmd_drivers/char/built-in.a := rm -f drivers/char/built-in.a;  printf "drivers/char/%s " mem.o random.o misc.o hw_random/built-in.a agp/built-in.a | xargs llvm-ar cDPrST drivers/char/built-in.a
