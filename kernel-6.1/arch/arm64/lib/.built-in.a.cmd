cmd_arch/arm64/lib/built-in.a := rm -f arch/arm64/lib/built-in.a;  printf "arch/arm64/lib/%s " xor-neon.o crc32.o mte.o | xargs llvm-ar cDPrST arch/arm64/lib/built-in.a
