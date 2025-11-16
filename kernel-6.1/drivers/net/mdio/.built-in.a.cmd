cmd_drivers/net/mdio/built-in.a := rm -f drivers/net/mdio/built-in.a;  printf "drivers/net/mdio/%s " fwnode_mdio.o of_mdio.o | xargs llvm-ar cDPrST drivers/net/mdio/built-in.a
