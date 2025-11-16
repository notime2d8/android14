cmd_net/bluetooth/rfcomm/built-in.a := rm -f net/bluetooth/rfcomm/built-in.a;  printf "net/bluetooth/rfcomm/%s " core.o sock.o tty.o | xargs llvm-ar cDPrST net/bluetooth/rfcomm/built-in.a
