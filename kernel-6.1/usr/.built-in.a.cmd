cmd_usr/built-in.a := rm -f usr/built-in.a;  printf "usr/%s " initramfs_data.o | xargs llvm-ar cDPrST usr/built-in.a
