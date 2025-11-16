cmd_drivers/usb/class/built-in.a := rm -f drivers/usb/class/built-in.a;  printf "drivers/usb/class/%s " cdc-acm.o cdc-wdm.o | xargs llvm-ar cDPrST drivers/usb/class/built-in.a
