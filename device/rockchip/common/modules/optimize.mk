#
# Copyright 2021 Rockchip Limited
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
# For AOSP
PRODUCT_DEXPREOPT_SPEED_APPS += SystemUI \


# Include this makefile to support speedcompile.

PRODUCT_DEXPREOPT_speed-profile_APPS += \
    Camera2 \
    Contacts \
    DeskClock \
    DocumentsUI \
    ExactCalculator \
    Gallery2 \
    Settings \
    SoundRecorder \
    SystemUI \
    Launcher3QuickStep \

ifneq ($(filter rk3368 rk3588, $(strip $(TARGET_BOARD_PLATFORM))), )
PRODUCT_SYSTEM_PROPERTIES += \
    dalvik.vm.systemuicompilerfilter=speed-profile \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.dex2oat-threads=8 \
    dalvik.vm.dex2oat-filter=speed \
	dalvik.vm.image-dex2oat-filter=speed \
	dalvik.vm.image-dex2oat-threads=8 \
	dalvik.vm.dex2oat-minidebuginfo=false \
	dalvik.vm.minidebuginfo=false \

else

PRODUCT_SYSTEM_PROPERTIES += \
    dalvik.vm.systemuicompilerfilter=speed-profile \
    dalvik.vm.boot-dex2oat-threads=4 \
    dalvik.vm.dex2oat-threads=3 \
    dalvik.vm.dex2oat-filter=speed\
    dalvik.vm.image-dex2oat-filter=speed \
    dalvik.vm.image-dex2oat-threads=4 \
    dalvik.vm.dex2oat-flags=--no-watch-dog \
    dalvik.vm.jit.codecachesize=0 \
    dalvik.vm.dex2oat-minidebuginfo=false \
    dalvik.vm.minidebuginfo=false \
   
endif

