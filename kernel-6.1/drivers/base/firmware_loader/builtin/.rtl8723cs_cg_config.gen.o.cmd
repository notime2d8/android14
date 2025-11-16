cmd_drivers/base/firmware_loader/builtin/rtl8723cs_cg_config.gen.o := clang -Wp,-MMD,drivers/base/firmware_loader/builtin/.rtl8723cs_cg_config.gen.o.d -nostdinc -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -D__KERNEL__ -D__ANDROID_COMMON_KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT= -Qunused-arguments -fmacro-prefix-map=./= -D__ASSEMBLY__ -fno-PIE --target=aarch64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -fno-asynchronous-unwind-tables -fno-unwind-tables -DKASAN_SHADOW_SCALE_SHIFT=    -c -o drivers/base/firmware_loader/builtin/rtl8723cs_cg_config.gen.o drivers/base/firmware_loader/builtin/rtl8723cs_cg_config.gen.S 

source_drivers/base/firmware_loader/builtin/rtl8723cs_cg_config.gen.o := drivers/base/firmware_loader/builtin/rtl8723cs_cg_config.gen.S

deps_drivers/base/firmware_loader/builtin/rtl8723cs_cg_config.gen.o := \
  include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \

drivers/base/firmware_loader/builtin/rtl8723cs_cg_config.gen.o: $(deps_drivers/base/firmware_loader/builtin/rtl8723cs_cg_config.gen.o)

$(deps_drivers/base/firmware_loader/builtin/rtl8723cs_cg_config.gen.o):
