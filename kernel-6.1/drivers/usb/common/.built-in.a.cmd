cmd_drivers/usb/common/built-in.a := rm -f drivers/usb/common/built-in.a;  printf "drivers/usb/common/%s " common.o | xargs llvm-ar cDPrST drivers/usb/common/built-in.a
