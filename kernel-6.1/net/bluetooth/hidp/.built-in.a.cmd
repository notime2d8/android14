cmd_net/bluetooth/hidp/built-in.a := rm -f net/bluetooth/hidp/built-in.a;  printf "net/bluetooth/hidp/%s " core.o sock.o | xargs llvm-ar cDPrST net/bluetooth/hidp/built-in.a
