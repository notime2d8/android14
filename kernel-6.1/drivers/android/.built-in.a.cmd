cmd_drivers/android/built-in.a := rm -f drivers/android/built-in.a;  printf "drivers/android/%s " binderfs.o binder.o binder_alloc.o | xargs llvm-ar cDPrST drivers/android/built-in.a
