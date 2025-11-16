cmd_crypto/async_tx/built-in.a := rm -f crypto/async_tx/built-in.a;  printf "crypto/async_tx/%s " async_tx.o async_xor.o | xargs llvm-ar cDPrST crypto/async_tx/built-in.a
