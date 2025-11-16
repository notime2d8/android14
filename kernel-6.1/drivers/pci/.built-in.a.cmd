cmd_drivers/pci/built-in.a := rm -f drivers/pci/built-in.a;  printf "drivers/pci/%s " of.o controller/built-in.a switch/built-in.a | xargs llvm-ar cDPrST drivers/pci/built-in.a
