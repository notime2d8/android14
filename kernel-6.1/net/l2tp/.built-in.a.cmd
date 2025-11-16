cmd_net/l2tp/built-in.a := rm -f net/l2tp/built-in.a;  printf "net/l2tp/%s " l2tp_core.o l2tp_ppp.o | xargs llvm-ar cDPrST net/l2tp/built-in.a
