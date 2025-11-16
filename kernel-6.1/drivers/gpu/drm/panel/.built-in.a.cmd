cmd_drivers/gpu/drm/panel/built-in.a := rm -f drivers/gpu/drm/panel/built-in.a;  printf "drivers/gpu/drm/panel/%s " panel-simple.o | xargs llvm-ar cDPrST drivers/gpu/drm/panel/built-in.a
