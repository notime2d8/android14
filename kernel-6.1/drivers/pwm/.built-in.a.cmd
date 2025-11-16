cmd_drivers/pwm/built-in.a := rm -f drivers/pwm/built-in.a;  printf "drivers/pwm/%s " core.o sysfs.o pwm-rockchip.o | xargs llvm-ar cDPrST drivers/pwm/built-in.a
