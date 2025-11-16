cmd_scripts/module.lds := clang -E -Wp,-MMD,scripts/.module.lds.d -nostdinc -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -D__KERNEL__ -D__ANDROID_COMMON_KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT= -Qunused-arguments -fmacro-prefix-map=./=   -P -Uarm64 -D__ASSEMBLY__ -DLINKER_SCRIPT -o scripts/module.lds scripts/module.lds.S

source_scripts/module.lds := scripts/module.lds.S

deps_scripts/module.lds := \
    $(wildcard include/config/UNWIND_TABLES) \
    $(wildcard include/config/ARCH_USES_CFI_TRAPS) \
    $(wildcard include/config/CRYPTO_FIPS140_MOD) \
    $(wildcard include/config/LTO_CLANG) \
    $(wildcard include/config/CRYPTO_FIPS140_MERGE_MOD_SECTIONS) \
  include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  arch/arm64/include/asm/module.lds.h \
    $(wildcard include/config/ARM64_MODULE_PLTS) \
    $(wildcard include/config/KASAN_SW_TAGS) \
    $(wildcard include/config/KVM) \
  arch/arm64/include/asm/page-def.h \
    $(wildcard include/config/ARM64_PAGE_SHIFT) \
  include/linux/const.h \
  include/vdso/const.h \
  include/uapi/linux/const.h \

scripts/module.lds: $(deps_scripts/module.lds)

$(deps_scripts/module.lds):
