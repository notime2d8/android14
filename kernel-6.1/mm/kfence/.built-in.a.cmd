cmd_mm/kfence/built-in.a := rm -f mm/kfence/built-in.a;  printf "mm/kfence/%s " core.o report.o | xargs llvm-ar cDPrST mm/kfence/built-in.a
