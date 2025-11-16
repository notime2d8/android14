cmd_arch/arm64/boot/Image.lz4 := { cat arch/arm64/boot/Image | lz4 -12 --favor-decSpeed stdin stdout; printf \\010\\150\\366\\001; } > arch/arm64/boot/Image.lz4
