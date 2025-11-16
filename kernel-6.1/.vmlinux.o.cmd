cmd_vmlinux.o := ld.lld -EL  -maarch64elf -z norelro -z noexecstack -r -o vmlinux.o  --whole-archive vmlinux.a --no-whole-archive --start-group  --end-group 
