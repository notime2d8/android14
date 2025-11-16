#
# Copyright 2014 Rockchip Limited
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
include vendor/rockchip/common/BoardConfigVendor.mk

ifeq ($(strip $(TARGET_ARCH)), arm64)
ifeq ($(DEVICE_IS_64BIT_ONLY), true)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
else
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
endif
endif

PRODUCT_AAPT_CONFIG ?= normal large xlarge hdpi tvdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG ?= xhdpi

ifdef TARGET_PREBUILT_KERNEL
# Copy kernel if exists
PRODUCT_COPY_FILES += \
    $(TARGET_PREBUILT_KERNEL):kernel
endif

# ART
ART_BUILD_TARGET_NDEBUG := true
ART_BUILD_TARGET_DEBUG := false
ART_BUILD_HOST_NDEBUG := true
ART_BUILD_HOST_DEBUG := false

# SDK Version
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rksdk.version=ANDROID$(PLATFORM_VERSION)_RKR5

TARGET_SYSTEM_PROP += device/rockchip/common/build/rockchip/rksdk.prop

# Set system properties identifying the chipset
PRODUCT_VENDOR_PROPERTIES += ro.soc.manufacturer=Rockchip

# Filesystem management tools
PRODUCT_PACKAGES += \
    fsck.f2fs \
    mkfs.f2fs \
    fsck_f2fs
PRODUCT_PACKAGES += \
    vndservicemanager

$(call inherit-product, device/rockchip/common/modules/audio.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
# Prebuild apps
$(call inherit-product, device/rockchip/common/modules/preinstall.mk)
$(call inherit-product, device/rockchip/common/modules/optimize.mk)
$(call inherit-product, device/rockchip/common/modules/build_dm.mk)

# HWC/Gralloc
$(call inherit-product, device/rockchip/common/modules/graphics.mk)

  # For arm Go tablet.
  $(call inherit-product, $(SRC_TARGET_DIR)/product/generic_no_telephony.mk)
  $(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
  $(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackageGo.mk)


# Optee
$(call inherit-product, device/rockchip/common/modules/optee.mk)
# Check optee
$(call inherit-product, hardware/rockchip/keymaster4/wait_for_tee/wait_for_tee.mk)
# Sepolicy
$(call inherit-product, device/rockchip/common/modules/android_sepolicy.mk)
# Media OMX/C2
$(call inherit-product, device/rockchip/common/modules/mediacodec.mk)
# Android Go configuration
$(call inherit-product, device/rockchip/common/modules/android_go.mk)
# Android Verified Boot
$(call inherit-product, device/rockchip/common/modules/avb.mk)
# init.rc files
$(call inherit-product, device/rockchip/common/rootdir/rootdir.mk)
# swap fstab files
$(call inherit-product, device/rockchip/common/rootdir/swap/swap.mk)

PRODUCT_COPY_FILES += \
    device/rockchip/common/rk29-keypad.kl:system/usr/keylayout/rk29-keypad.kl \
    device/rockchip/common/ff680030_pwm.kl:system/usr/keylayout/ff680030_pwm.kl \
    device/rockchip/common/alarm_filter.xml:system/etc/alarm_filter.xml \
    device/rockchip/common/ff420030_pwm.kl:system/usr/keylayout/ff420030_pwm.kl

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wpa_config.txt:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_config.txt \
    hardware/broadcom/wlan/bcmdhd/config/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    hardware/broadcom/wlan/bcmdhd/config/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    hardware/realtek/wlan/supplicant_overlay_config/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_rtk.conf \
    hardware/realtek/wlan/supplicant_overlay_config/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_rtk.conf


PRODUCT_COPY_FILES += \
    external/wifi_driver/wifi.load:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wifi.load

PRODUCT_PACKAGES += \
    iperf \
    libiconv \
    libwpa_client \
    hostapd \
    wificond \
    wifilogd \
    wpa_supplicant \
    wpa_cli \
    wpa_supplicant.conf \
    libwifi-hal-package \
    dhcpcd.conf

ifeq ($(ROCKCHIP_USE_LAZY_HAL),true)
PRODUCT_PACKAGES += \
    android.hardware.wifi-service-lazy
else
PRODUCT_PACKAGES += \
    android.hardware.wifi-service
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.connectivity.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.connectivity.rc

ifndef PRODUCT_FSTAB_TEMPLATE
$(warning Please add fstab.in with PRODUCT_FSTAB_TEMPLATE in your product.mk)
# To use fstab auto generator, define fstab.in in your product.mk,
# Then include the device/rockchip/common/build/rockchip/RebuildFstab.mk in your AndroidBoard.mk
PRODUCT_COPY_FILES += \
    $(TARGET_DEVICE_DIR)/fstab.rk30board:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.$(TARGET_BOARD_HARDWARE) \
    $(TARGET_DEVICE_DIR)/fstab.rk30board:$(TARGET_COPY_OUT_RAMDISK)/fstab.$(TARGET_BOARD_HARDWARE)

# Header V3+, add vendor_boot
ifeq ($(BOARD_BUILD_GKI),true)
PRODUCT_COPY_FILES += \
    $(TARGET_DEVICE_DIR)/fstab.rk30board:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.$(TARGET_BOARD_HARDWARE)
endif
endif # Use PRODUCT_FSTAB_TEMPLATE

# Enable Scoped Storage related
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Bluetooth
$(call inherit-product, device/rockchip/common/modules/bluetooth.mk)

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml

# USB HOST
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml

# USB ACCESSORY
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml

    PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/tablet_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/tablet_core_hardware.xml

# add this prop to skip vr test for cts-on-gsi in vts
PRODUCT_PROPERTY_OVERRIDES += \
	ro.boot.vr=0

ifeq ($(filter atv, $(strip $(TARGET_BOARD_PLATFORM_PRODUCT))), )
# Include sensor module for tablet
$(call inherit-product, device/rockchip/common/modules/sensors.mk)
endif

# Include thermal HAL module
$(call inherit-product, device/rockchip/common/modules/thermal.mk)

# include vibrator AIDL module
$(call inherit-product, device/rockchip/common/modules/vibrator.mk)

# Media DRM
$(call inherit-product, device/rockchip/common/modules/media_drm.mk)

# Usb controller detector for GKI
$(call inherit-product, device/rockchip/common/modules/usb.mk)

# GKI modules
$(call inherit-product, device/rockchip/common/modules/gki_common.mk)

# kernel configurations
$(call inherit-product, device/rockchip/common/modules/kernel_config.mk)

# make boot/vendor_boot
$(call inherit-product, device/rockchip/common/modules/make_boot.mk)

# recovery
$(call inherit-product, device/rockchip/common/modules/recovery.mk)

# rknn modules
$(call inherit-product, device/rockchip/common/modules/rknn.mk)

# Power AIDL
PRODUCT_PACKAGES += \
    android.hardware.power \
    android.hardware.power-service.rockchip

PRODUCT_PACKAGES += \
    akmd

# Light AIDL
ifneq ($(TARGET_BOARD_PLATFORM_PRODUCT), atv)
PRODUCT_PACKAGES += \
    android.hardware.lights \
    android.hardware.lights-service.rockchip
endif

ifeq ($(strip $(BOARD_SUPER_PARTITION_GROUPS)),rockchip_dynamic_partitions)
# Fastbootd HAL
# TODO: develop a hal for GMS...
PRODUCT_PACKAGES += \
    android.hardware.fastboot-service.rockchip_recovery \
    android.hardware.boot-service.default_recovery \
    fastbootd
endif # BOARD_USE_DYNAMIC_PARTITIONS

# iep
ifneq ($(filter rk3188 rk3190 rk3026 rk3288 rk312x rk3126c rk3128 px3se rk3368 rk3326 rk356x rk3328 rk3366 rk3399, $(strip $(TARGET_BOARD_PLATFORM))), )
BUILD_IEP := true
PRODUCT_PACKAGES += \
    libiep
else
BUILD_IEP := false
endif

# Health/Battery & Charger
$(call inherit-product, device/rockchip/common/modules/health.mk)

# Add board.platform default property to parsing related rc
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.board.platform=$(strip $(TARGET_BOARD_PLATFORM))

PRODUCT_PRODUCT_PROPERTIES += \
    ro.target.product=$(strip $(TARGET_BOARD_PLATFORM_PRODUCT))

PRODUCT_CHARACTERISTICS := $(strip $(TARGET_BOARD_PLATFORM_PRODUCT))

# Filesystem management tools
# EXT3/4 support
PRODUCT_PACKAGES += \
    mke2fs \
    e2fsck \
    tune2fs \
    resize2fs

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.strictmode.visual=false

ifeq ($(strip $(BOARD_HAVE_FLASH)), true)
    PRODUCT_PROPERTY_OVERRIDES += ro.rk.flash_enable=true
else
    PRODUCT_PROPERTY_OVERRIDES += ro.rk.flash_enable=false
endif

ifeq ($(strip $(BOARD_SUPPORT_HDMI)), true)
    PRODUCT_PROPERTY_OVERRIDES += ro.rk.hdmi_enable=true
else
    PRODUCT_PROPERTY_OVERRIDES += ro.rk.hdmi_enable=false
endif

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PROPERTY_OVERRIDES +=       \
    ro.factory.hasUMS=false         \
    testing.mediascanner.skiplist = /mnt/shell/emulated/Android/

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.rockchip.hasUMS.false.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.$(TARGET_BOARD_HARDWARE).environment.rc


########################################################
# this product has GPS or not
########################################################
ifeq ($(strip $(BOARD_HAS_GPS)),true)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.factory.hasGPS=true
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.factory.hasGPS=false
endif
########################################################
# this product has Ethernet or not
########################################################
ifeq ($(strip $(BOARD_HS_ETHERNET)),true)
PRODUCT_PROPERTY_OVERRIDES += ro.rk.ethernet_settings=true
endif

#######################################################
#build system support ntfs?
########################################################
PRODUCT_PROPERTY_OVERRIDES += \
    ro.factory.storage_suppntfs=true

PRODUCT_PACKAGES += \
   ntfs-3g-compart \
   ntfsfix \
   mkntfs

########################################################
# build without battery
########################################################
ifeq ($(strip $(BUILD_WITHOUT_BATTERY)), true)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.factory.without_battery=true
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.factory.without_battery=false
endif

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

#device recovery ui
#PRODUCT_PACKAGES += \
    librecovery_ui_$(TARGET_PRODUCT)

ifeq ($(strip $(BOARD_BOOT_READAHEAD)), true)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/readahead/readahead:$(TARGET_COPY_OUT_VENDOR)/sbin/readahead \
    $(LOCAL_PATH)/proprietary/readahead/readahead_list.txt:$(TARGET_COPY_OUT_VENDOR)/readahead_list.txt
endif

$(call inherit-product-if-exists, vendor/rockchip/common/device-vendor.mk)

ifeq ($(strip $(BUILD_WITH_SKIPVERIFY)),true)
PRODUCT_PROPERTY_OVERRIDES +=               \
    ro.config.enable.skipverify=true
endif

#hdmi cec
ifeq ($(BOARD_SUPPORT_HDMI_CEC),true)
  $(call inherit-product, device/rockchip/common/modules/hdmi_cec.mk)
endif

ifeq ($(strip $(BOARD_SHOW_HDMI_SETTING)), true)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.hdmi_settings=true

USE_PRODUCT_RESOLUTION_WHITE := $(shell test -f $(TARGET_DEVICE_DIR)/resolution_white.xml && echo true)
ifeq ($(strip $(USE_PRODUCT_RESOLUTION_WHITE)), true)
  PRODUCT_COPY_FILES += \
      $(TARGET_DEVICE_DIR)/resolution_white.xml:/system/usr/share/resolution_white.xml
endif

# Hw Output HAL
PRODUCT_PACKAGES += \
    rockchip.hardware.outputmanager@1.0-impl \
    rockchip.hardware.outputmanager@1.0-service

PRODUCT_PACKAGES += hw_output.default

PRODUCT_COPY_FILES += \
    device/rockchip/common/permissions/rockchip.software.display.xml:system/etc/permissions/rockchip.software.display.xml
endif

PRODUCT_PACKAGES += \
	abc

ifeq ($(strip $(TARGET_BOARD_PLATFORM_PRODUCT)), vr)
PRODUCT_COPY_FILES += \
       device/rockchip/common/lowmem_package_filter.xml:system/etc/lowmem_package_filter.xml
endif

#if force app can see udisk
ifeq ($(strip $(BOARD_FORCE_UDISK_VISIBLE)),true)
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.udisk.visible=true
endif

#if disable safe mode to speed up booting time
ifeq ($(strip $(BOARD_DISABLE_SAFE_MODE)),true)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.safemode.disabled=true
endif

#boot and shutdown animation, ringing
ifeq ($(strip $(BOOT_SHUTDOWN_ANIMATION_RINGING)),true)
include device/rockchip/common/bootshutdown/bootshutdown.mk
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.shutdown_anim.orien=0
endif

ifeq ($(strip $(BOARD_ENABLE_PMS_MULTI_THREAD_SCAN)), true)
PRODUCT_PROPERTY_OVERRIDES += \
	ro.pms.multithreadscan=true
endif

#add for hwui property
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rk.screenshot_enable=true   \
    sys.status.hidebar_enable=false

PRODUCT_FULL_TREBLE_OVERRIDE := true
#PRODUCT_COMPATIBILITY_MATRIX_LEVEL_OVERRIDE := 27

# Add runtime resource overlay for framework-res
# TODO disable for box
ifeq ($(filter atv box, $(strip $(TARGET_BOARD_PLATFORM_PRODUCT))), )
PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res
endif

#The module which belong to vndk-sp is defined by google
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0.vndk-sp\
    android.hardware.graphics.allocator@2.0.vndk-sp\
    android.hardware.graphics.mapper@2.0.vndk-sp\
    android.hardware.graphics.common@1.0.vndk-sp\
    libhwbinder.vndk-sp\
    libbase.vndk-sp\
    libcutils.vndk-sp\
    libhardware.vndk-sp\
    libhidlbase.vndk-sp\
    libhidltransport.vndk-sp\
    libutils.vndk-sp\
    libc++.vndk-sp\
    libRS_internal.vndk-sp\
    libRSDriver.vndk-sp\
    libRSCpuRef.vndk-sp\
    libbcinfo.vndk-sp\
    libblas.vndk-sp\
    libft2.vndk-sp\
    libpng.vndk-sp\
    libcompiler_rt.vndk-sp\
    libbacktrace.vndk-sp\
    libunwind.vndk-sp\
    liblzma.vndk-sp\

#######for target product ########
PRODUCT_PACKAGES += \
    Music \
    WallpaperPicker

#PRODUCT_COPY_FILES += \
#   $(LOCAL_PATH)/bootanimation.zip:/system/media/bootanimation.zip


# By default, enable zram; experiment can toggle the flag,
# which takes effect on boot
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.zram_enabled=1

### fix adb-device cannot be identified  ###
### in AOSP-system image (user firmware) ###
ifneq (,$(filter userdebug eng,$(TARGET_BUILD_VARIANT)))
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.logd.kernel=1
PRODUCT_PACKAGES += io
endif

ifeq ($(strip $(BOARD_USE_DRM)),true)
PRODUCT_PACKAGES += \
    modetest
endif

ifeq ($(strip $(BOARD_USB_ALLOW_DEFAULT_MTP)), true)
PRODUCT_PROPERTY_OVERRIDES += \
       ro.usb.default_mtp=true
endif

PRODUCT_PACKAGES += libstdc++.vendor

#Build with UiMode Config
PRODUCT_COPY_FILES += \
    device/rockchip/common/uimode/package_uimode_config.xml:vendor/etc/package_uimode_config.xml

# Zoom out recovery ui of box by two percent.
ifneq ($(filter atv box, $(strip $(TARGET_BOARD_PLATFORM_PRODUCT))), )
    TARGET_RECOVERY_OVERSCAN_PERCENT := 2
    TARGET_BASE_PARAMETER_IMAGE ?= device/rockchip/common/baseparameter/baseparameter.img
    # savBaseParameter tool
    ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
        #PRODUCT_PACKAGES += saveBaseParameter
    endif
    DEVICE_FRAMEWORK_MANIFEST_FILE := device/rockchip/common/manifest_framework_override.xml
endif

# add AudioSetting
PRODUCT_PACKAGES += \
    rockchip.hardware.rkaudiosetting@1.0-service \
    rockchip.hardware.rkaudiosetting@1.0-impl \
    rockchip.hardware.rkaudiosetting@1.0

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rt_audio_config.xml:/system/etc/rt_audio_config.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rt_video_config.xml:/system/etc/rt_video_config.xml

#Build with Flash IMG
BOARD_FLASH_IMG_ENABLE ?= false
ifeq ($(TARGET_BOARD_PLATFORM_PRODUCT),box)
    BOARD_FLASH_IMG_ENABLE := true
endif
#FLASH_IMG
ifeq ($(strip $(BOARD_FLASH_IMG_ENABLE)), true)
    PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
        ro.flash_img.enable = true
else
    PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
        ro.flash_img.enable = false
endif
PRODUCT_COPY_FILES += \
    device/rockchip/common/flash_img/flash_img.sh:vendor/bin/flash_img.sh

#read pcie info for Devicetest APK
PRODUCT_COPY_FILES += \
    device/rockchip/common/pcie/read_pcie_info.sh:vendor/bin/read_pcie_info.sh

BOARD_TV_LOW_MEMOPT ?= false
ifeq ($(strip $(BOARD_TV_LOW_MEMOPT)), true)
    include device/rockchip/common/tv/tv_low_ram_device.mk
endif

# Camera support
ifeq ($(BOARD_CAMERA_SUPPORT),true)
ifeq ($(BOARD_CAMERA_AIDL),true)
$(call inherit-product, device/rockchip/common/modules/camera_aidl.mk)
else
$(call inherit-product, device/rockchip/common/modules/camera.mk)
endif
endif

ifeq ($(BOARD_ROCKCHIP_PKVM), true)
# pKVM
$(call inherit-product, device/rockchip/common/modules/pkvm.mk)
endif

# Rockchip HALs
$(call inherit-product, device/rockchip/common/manifests/frameworks/vintf.mk)

ifeq ($(BOARD_MEMTRACK_SUPPORT),true)
$(call inherit-product, device/rockchip/common/modules/memtrack.mk)
endif


ifeq ($(BOARD_USES_HWC_PROXY_SERVICE),true)
$(call inherit-product, hardware/rockchip/hwc_proxy_service/hwc_proxy_service.mk)
endif

PRODUCT_PACKAGES += \
	libbaseparameter

USE_PRODUCT_DISPLAY_SETTINGS := $(shell test -f $(TARGET_DEVICE_DIR)/displays/display_settings.xml && echo true)
ifeq ($(strip $(USE_PRODUCT_DISPLAY_SETTINGS)), true)
PRODUCT_COPY_FILES += \
    $(TARGET_DEVICE_DIR)/displays/display_settings.xml:$(TARGET_COPY_OUT_VENDOR)/etc/display_settings.xml
else
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/display_settings.xml:$(TARGET_COPY_OUT_VENDOR)/etc/display_settings.xml
endif

# build libmpimmz for rknn
PRODUCT_PACKAGES += \
	libmpimmz

# prebuild camera binary tools
ifneq (,$(filter userdebug eng,$(TARGET_BUILD_VARIANT)))
PRODUCT_PACKAGES += \
	media-ctl \
	v4l2-ctl
endif

# neon transform library
PRODUCT_PACKAGES += \
	librockchipxxx

# set defaut color saturation
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.sf.color_saturation=1.0

ifneq ($(strip $(TARGET_BOARD_PLATFORM_PRODUCT)), box)
    # enable retriever during video playing
    PRODUCT_PROPERTY_OVERRIDES += \
        rt_retriever_enable=1

    ifneq ($(filter rk3576, $(TARGET_BOARD_PLATFORM)), )
        PRODUCT_PROPERTY_OVERRIDES += \
            rt_vdec_fbc_min_stride=4096
    endif
endif

# Window Extensions
ifneq ($(strip $(BUILD_WITH_GO_OPT)),true)
$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)
endif

# picture settings
ifeq ($(strip $(BOARD_SHOW_PICTURE_SETTING)), true)
	PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.picture_settings=true
endif

# Remove phone packages that added by default product configuration
##remove-LatinIME remove-Contacts
PRODUCT_PACKAGES += \
    	remove-BlockedNumberProvider \
    	remove-Telecom \
    	remove-TeleService \
    	remove-MmsService \
	remove-Traceur \
	remove-HTMLViewer \
	remove-UserDictionaryProvider \
	remove-SimAppDialog \
	remove-SecureElement \
	remove-EasterEgg \
	remove-CalendarProvider \
	remove-BookmarkProvider \
	remove-BasicDreams \
	remove-DeskClock \
	remove-Calendar \
    	remove-ExactCalculator \
    	remove-Etar \
    	remove-Email \
    	remove-QuickSearchBox \
    	remove-NfcNci \
     	remove-Camera2 \
     	remove-vr \
     	remove-PrintRecommendationService \
     	remove-PrintSpooler \
     	remove-TelephonyProvider \

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.fuse.passthrough.enable=true \
    dalvik.vm.dex2oat64.enabled=true \
	config.disable_rtt=true \
	config.disable_vrmanager=true \
	config.disable_consumerir=true \
	config.disable_cameraservice=true \

PRODUCT_VENDOR_PROPERTIES += \
	persist.device_config.configuration.disable_rescue_party=true
	
# Disable GPU-intensive background blur for widget picker
PRODUCT_SYSTEM_PROPERTIES += \
    ro.launcher.depth.widget=0
    
# Disable GPU-intensive background blur support when requested by apps
PRODUCT_VENDOR_PROPERTIES += \
    ro.surface_flinger.supports_background_blur=0
	
