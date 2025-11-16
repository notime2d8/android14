cmd_net/bluetooth/bnep/built-in.a := rm -f net/bluetooth/bnep/built-in.a;  printf "net/bluetooth/bnep/%s " core.o sock.o netdev.o | xargs llvm-ar cDPrST net/bluetooth/bnep/built-in.a
