cmd_certs/built-in.a := rm -f certs/built-in.a;  printf "certs/%s " system_keyring.o system_certificates.o | xargs llvm-ar cDPrST certs/built-in.a
