cmd_drivers/input/misc/built-in.a := rm -f drivers/input/misc/built-in.a;  printf "drivers/input/misc/%s " rk805-pwrkey.o uinput.o | xargs llvm-ar cDPrST drivers/input/misc/built-in.a
