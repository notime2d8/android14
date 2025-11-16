cmd_arch/arm64/tools/gen-hyprel := clang -Wp,-MMD,arch/arm64/tools/.gen-hyprel.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11   -I./include    -o arch/arm64/tools/gen-hyprel arch/arm64/tools/gen-hyprel.c   

source_arch/arm64/tools/gen-hyprel := arch/arm64/tools/gen-hyprel.c

deps_arch/arm64/tools/gen-hyprel := \
    $(wildcard include/config/RELOCATABLE) \
    $(wildcard include/config/CPU_LITTLE_ENDIAN) \
    $(wildcard include/config/CPU_BIG_ENDIAN) \

arch/arm64/tools/gen-hyprel: $(deps_arch/arm64/tools/gen-hyprel)

$(deps_arch/arm64/tools/gen-hyprel):
