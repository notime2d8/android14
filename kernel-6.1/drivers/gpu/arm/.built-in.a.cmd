cmd_drivers/gpu/arm/built-in.a := rm -f drivers/gpu/arm/built-in.a;  printf "drivers/gpu/arm/%s " bifrost/built-in.a | xargs llvm-ar cDPrST drivers/gpu/arm/built-in.a
