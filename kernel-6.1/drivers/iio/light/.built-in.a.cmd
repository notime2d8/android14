cmd_drivers/iio/light/built-in.a := rm -f drivers/iio/light/built-in.a;  printf "drivers/iio/light/%s " isl29018.o tsl2563.o tsl2583.o | xargs llvm-ar cDPrST drivers/iio/light/built-in.a
