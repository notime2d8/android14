#
# Copyright 2014 The Android Open-Source Project
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
include device/rockchip/rk3326/BoardConfig.mk

PRODUCT_UBOOT_CONFIG := rk3326
PRODUCT_KERNEL_ARCH := arm64
PRODUCT_KERNEL_CONFIG := g350_defconfig
PRODUCT_KERNEL_DTS := rk3326-g350-android

MALLOC_SVELTE := true

# AB image definition
BOARD_USES_AB_IMAGE := false
BOARD_ROCKCHIP_VIRTUAL_AB_ENABLE := false

TARGET_RECOVERY_DEFAULT_ROTATION := ROTATION_NONE

BOARD_SUPER_PARTITION_SIZE := 2516582400
#3263168512

# disable HDMI CEC
BOARD_SUPPORT_HDMI := false
BOARD_SUPPORT_HDMI_CEC := false


# used for fstab_generator, sdmmc controller address
PRODUCT_BOOT_DEVICE  := ff370000.dwmmc
PRODUCT_SDMMC_DEVICE := ff380000.dwmmc

BOARD_BLUETOOTH_SUPPORT := false
BOARD_HAVE_BLUETOOTH_RTK := false

# Properties
TARGET_VENDOR_PROP += device/rockchip/rk3326/g350/vendor.prop

