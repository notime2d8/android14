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

# First lunching is U, api_level is 34
PRODUCT_SHIPPING_API_LEVEL := 34
PRODUCT_DTBO_TEMPLATE := $(LOCAL_PATH)/dt-overlay.in

include device/rockchip/common/build/rockchip/DynamicPartitions.mk
include device/rockchip/rk356x/flip/BoardConfig.mk
include device/rockchip/common/BoardConfig.mk
$(call inherit-product, device/rockchip/rk356x/device.mk)
$(call inherit-product, device/rockchip/common/device.mk)
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_NAME := flip
PRODUCT_DEVICE := flip
PRODUCT_BRAND := Rockchip
PRODUCT_MODEL := Miyoo Flip
PRODUCT_MANUFACTURER := Miyoo
PRODUCT_AAPT_PREF_CONFIG := mdpi

#Gapps
##$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)

#Bluetooth Conf
PRODUCT_COPY_FILES += \
    device/rockchip/rk356x/flip/rtkbt.conf:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth/rtkbt.conf \
    device/rockchip/rk356x/flip/zed_keyboard.kcm:$(TARGET_COPY_OUT_SYSTEM)/usr/keychars/odroidgo_joypad.kcm \
    device/rockchip/rk356x/flip/zed_keyboard.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/odroidgo_joypad.kl \

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    	device/rockchip/rk356x/flip/overlay \

PRODUCT_PACKAGES += \
	remove-LatinIME \
	LeanbackIME \
	Daijishou \
	Gamepad \

# Disable stats logging & monitoring
PRODUCT_PROPERTY_OVERRIDES += \
	debug.atrace.tags.enableflags=0 \
	debugtool.anrhistory=0 \
	ro.com.google.locationfeatures=0 \
	ro.com.google.networklocation=0 \
	profiler.debugmonitor=false \
	profiler.launch=false \
	profiler.hung.dumpdobugreport=false \
	persist.service.pcsync.enable=0 \
	persist.service.lgospd.enable=0 \
    persist.vendor.verbose_logging_enabled=false \

#
## add Rockchip properties
#
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=220
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_width=68
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_height=121
PRODUCT_PROPERTY_OVERRIDES += ro.wifi.sleep.power.down=true
PRODUCT_PROPERTY_OVERRIDES += persist.wifi.sleep.delay.ms=0
PRODUCT_PROPERTY_OVERRIDES += persist.sys.show.battery=1
PRODUCT_PROPERTY_OVERRIDES += persist.bt.power.down=true
PRODUCT_PROPERTY_OVERRIDES += ro.vendor.hdmirotationlock=false
PRODUCT_PROPERTY_OVERRIDES += vendor.hwc.device.primary=DSI
PRODUCT_PROPERTY_OVERRIDES += vendor.hwc.device.extend=HDMI-A

# Set lowram options and enable traced by default
PRODUCT_VENDOR_PROPERTIES += ro.config.low_ram=true

SF_PRIMARY_DISPLAY_ORIENTATION := 0
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.primary_display_orientation=ORIENTATION_$(SF_PRIMARY_DISPLAY_ORIENTATION)

# Enable DM file pre-opting to reduce first boot time
PRODUCT_DEX_PREOPT_GENERATE_DM_FILES := true

PRODUCT_PACKAGES += \
android.hardware.vibrator-service.rockchip \

PRODUCT_PROPERTY_OVERRIDES += service.adb.tcp.port=5555

# Write back
PRODUCT_PRODUCT_PROPERTIES += persist.sys.ext_ram=1024



