cmd_block/partitions/built-in.a := rm -f block/partitions/built-in.a;  printf "block/partitions/%s " core.o cmdline.o msdos.o efi.o | xargs llvm-ar cDPrST block/partitions/built-in.a
