cmd_drivers/mailbox/built-in.a := rm -f drivers/mailbox/built-in.a;  printf "drivers/mailbox/%s " mailbox.o | xargs llvm-ar cDPrST drivers/mailbox/built-in.a
