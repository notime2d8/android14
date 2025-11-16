cmd_drivers/net/pcs/built-in.a := rm -f drivers/net/pcs/built-in.a;  printf "drivers/net/pcs/%s " pcs-xpcs.o pcs-xpcs-nxp.o | xargs llvm-ar cDPrST drivers/net/pcs/built-in.a
