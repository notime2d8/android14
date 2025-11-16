cmd_drivers/usb/gadget/udc/built-in.a := rm -f drivers/usb/gadget/udc/built-in.a;  printf "drivers/usb/gadget/udc/%s " core.o trace.o | xargs llvm-ar cDPrST drivers/usb/gadget/udc/built-in.a
