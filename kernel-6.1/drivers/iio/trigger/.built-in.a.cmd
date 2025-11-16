cmd_drivers/iio/trigger/built-in.a := rm -f drivers/iio/trigger/built-in.a;  printf "drivers/iio/trigger/%s " iio-trig-sysfs.o | xargs llvm-ar cDPrST drivers/iio/trigger/built-in.a
