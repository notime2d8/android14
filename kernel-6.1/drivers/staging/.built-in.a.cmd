cmd_drivers/staging/built-in.a := rm -f drivers/staging/built-in.a;  printf "drivers/staging/%s " media/built-in.a iio/built-in.a android/built-in.a | xargs llvm-ar cDPrST drivers/staging/built-in.a
