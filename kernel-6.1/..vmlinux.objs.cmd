cmd_.vmlinux.objs := for f in vmlinux.a; do case $${f} in *libgcc.a) ;; *) llvm-ar t $${f} ;; esac done > .vmlinux.objs
