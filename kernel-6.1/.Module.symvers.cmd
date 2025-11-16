cmd_Module.symvers :=  sed 's/ko$$/o/'  modules.order | scripts/mod/modpost -m      -o Module.symvers -T - vmlinux.o
