cmd_net/rfkill/built-in.a := rm -f net/rfkill/built-in.a;  printf "net/rfkill/%s " core.o rfkill-wlan.o rfkill-bt.o | xargs llvm-ar cDPrST net/rfkill/built-in.a
