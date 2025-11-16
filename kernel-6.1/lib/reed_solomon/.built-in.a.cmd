cmd_lib/reed_solomon/built-in.a := rm -f lib/reed_solomon/built-in.a;  printf "lib/reed_solomon/%s " reed_solomon.o | xargs llvm-ar cDPrST lib/reed_solomon/built-in.a
