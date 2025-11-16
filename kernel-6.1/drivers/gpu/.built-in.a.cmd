cmd_drivers/gpu/built-in.a := rm -f drivers/gpu/built-in.a;  printf "drivers/gpu/%s " host1x/built-in.a drm/built-in.a vga/built-in.a arm/built-in.a | xargs llvm-ar cDPrST drivers/gpu/built-in.a
