cmd_drivers/gpu/arm/bifrost/mmu/backend/mali_kbase_mmu_faults_decoder_luts_jm.o := clang -Wp,-MMD,drivers/gpu/arm/bifrost/mmu/backend/.mali_kbase_mmu_faults_decoder_luts_jm.o.d -nostdinc -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D__KERNEL__ -D__ANDROID_COMMON_KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT= -Qunused-arguments -fmacro-prefix-map=./= -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Wno-format-security -std=gnu11 --target=aarch64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -mgeneral-regs-only -DCONFIG_CC_HAS_K_CONSTRAINT=1 -Wno-psabi -fno-asynchronous-unwind-tables -fno-unwind-tables -mbranch-protection=none -Wa,-march=armv8.5-a -DARM64_ASM_ARCH='"armv8.5-a"' -ffixed-x18 -DKASAN_SHADOW_SCALE_SHIFT= -fno-delete-null-pointer-checks -Wno-frame-address -Wno-address-of-packed-member -O2 -Wframe-larger-than=2048 -fstack-protector-strong -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -ftrivial-auto-var-init=zero -fno-stack-clash-protection -fsanitize=shadow-call-stack -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -fno-strict-overflow -fno-stack-check -Werror=date-time -Werror=incompatible-pointer-types -Wno-initializer-overrides -Wno-sign-compare -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-enum-enum-conversion -mstack-protector-guard=sysreg -mstack-protector-guard-reg=sp_el0 -mstack-protector-guard-offset=1200 -DMALI_CUSTOMER_RELEASE=1 -DMALI_USE_CSF=0 -DMALI_KERNEL_TEST_API=1 -DMALI_UNIT_TEST=0 -DMALI_COVERAGE=0 -DMALI_RELEASE_NAME='"g25p0-00eac0"' -DMALI_JIT_PRESSURE_LIMIT_BASE=1 -DMALI_PLATFORM_DIR=rk -DMALI_KBASE_PLATFORM_PATH=../.././drivers/gpu/arm/bifrost/platform/rk -I./include/linux -I./drivers/staging/android -I./drivers/gpu/arm/bifrost -I./drivers/gpu/arm/bifrost/platform/rk -I./drivers/gpu/arm/bifrost/../../../base -I./drivers/gpu/arm/bifrost/../../../../include -DMALI_CUSTOMER_RELEASE=1 -DMALI_USE_CSF=0 -DMALI_KERNEL_TEST_API=1 -DMALI_UNIT_TEST=0 -DMALI_COVERAGE=0 -DMALI_RELEASE_NAME='"g25p0-00eac0"' -DMALI_JIT_PRESSURE_LIMIT_BASE=1 -DMALI_PLATFORM_DIR=rk -DMALI_KBASE_PLATFORM_PATH=../.././drivers/gpu/arm/bifrost/platform/rk -I./include/linux -I./drivers/staging/android -I./drivers/gpu/arm/bifrost -I./drivers/gpu/arm/bifrost/platform/rk -I./drivers/gpu/arm/bifrost/../../../base -I./drivers/gpu/arm/bifrost/../../../../include    -DKBUILD_MODFILE='"drivers/gpu/arm/bifrost/bifrost_kbase"' -DKBUILD_BASENAME='"mali_kbase_mmu_faults_decoder_luts_jm"' -DKBUILD_MODNAME='"bifrost_kbase"' -D__KBUILD_MODNAME=kmod_bifrost_kbase -c -o drivers/gpu/arm/bifrost/mmu/backend/mali_kbase_mmu_faults_decoder_luts_jm.o drivers/gpu/arm/bifrost/mmu/backend/mali_kbase_mmu_faults_decoder_luts_jm.c  

source_drivers/gpu/arm/bifrost/mmu/backend/mali_kbase_mmu_faults_decoder_luts_jm.o := drivers/gpu/arm/bifrost/mmu/backend/mali_kbase_mmu_faults_decoder_luts_jm.c

deps_drivers/gpu/arm/bifrost/mmu/backend/mali_kbase_mmu_faults_decoder_luts_jm.o := \
  include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  include/linux/compiler_types.h \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/PAHOLE_HAS_BTF_TAG) \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  include/linux/compiler_attributes.h \
  include/linux/compiler-clang.h \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
    $(wildcard include/config/CLANG_VERSION) \
  arch/arm64/include/asm/compiler.h \
  drivers/gpu/arm/bifrost/mmu/backend/mali_kbase_mmu_faults_decoder_luts_jm.h \
  include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  include/uapi/linux/types.h \
  arch/arm64/include/generated/uapi/asm/types.h \
  include/uapi/asm-generic/types.h \
  include/asm-generic/int-ll64.h \
  include/uapi/asm-generic/int-ll64.h \
  arch/arm64/include/uapi/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/uapi/asm-generic/bitsperlong.h \
  include/uapi/linux/posix_types.h \
  include/linux/stddef.h \
  include/uapi/linux/stddef.h \
  arch/arm64/include/uapi/asm/posix_types.h \
  include/uapi/asm-generic/posix_types.h \

drivers/gpu/arm/bifrost/mmu/backend/mali_kbase_mmu_faults_decoder_luts_jm.o: $(deps_drivers/gpu/arm/bifrost/mmu/backend/mali_kbase_mmu_faults_decoder_luts_jm.o)

$(deps_drivers/gpu/arm/bifrost/mmu/backend/mali_kbase_mmu_faults_decoder_luts_jm.o):
