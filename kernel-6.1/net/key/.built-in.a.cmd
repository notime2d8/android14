cmd_net/key/built-in.a := rm -f net/key/built-in.a;  printf "net/key/%s " af_key.o | xargs llvm-ar cDPrST net/key/built-in.a
