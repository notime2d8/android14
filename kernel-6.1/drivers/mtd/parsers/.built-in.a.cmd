cmd_drivers/mtd/parsers/built-in.a := rm -f drivers/mtd/parsers/built-in.a;  printf "drivers/mtd/parsers/%s " cmdlinepart.o ofpart_core.o | xargs llvm-ar cDPrST drivers/mtd/parsers/built-in.a
