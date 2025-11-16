cmd_drivers/platform/built-in.a := rm -f drivers/platform/built-in.a;  printf "drivers/platform/%s " surface/built-in.a | xargs llvm-ar cDPrST drivers/platform/built-in.a
