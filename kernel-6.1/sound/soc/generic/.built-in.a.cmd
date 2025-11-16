cmd_sound/soc/generic/built-in.a := rm -f sound/soc/generic/built-in.a;  printf "sound/soc/generic/%s " simple-card-utils.o simple-card.o | xargs llvm-ar cDPrST sound/soc/generic/built-in.a
