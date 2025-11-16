cmd_sound/synth/built-in.a := rm -f sound/synth/built-in.a;  printf "sound/synth/%s " emux/built-in.a | xargs llvm-ar cDPrST sound/synth/built-in.a
