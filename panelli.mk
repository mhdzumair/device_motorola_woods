#
# Copyright (C) 2018 The LineageOS Project
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

DEVICE_PATH := device/motorola/panelli

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := panelli

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

# Deodex
WITH_DEXPREOPT ?= true
DONT_DEXPREOPT_PREBUILTS := true
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true

# Manifest
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/manifest.xml:system/vendor/manifest.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# Ramdisk
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/fstab.mt6735:root/fstab.mt6735 \
    $(DEVICE_PATH)/rootdir/init.connectivity.rc:root/init.connectivity.rc \
    $(DEVICE_PATH)/rootdir/init.microtrust.rc:root/init.microtrust.rc \
    $(DEVICE_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(DEVICE_PATH)/rootdir/init.mt6735.rc:root/init.mt6735.rc \
    $(DEVICE_PATH)/rootdir/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
    $(DEVICE_PATH)/rootdir/init.project.rc:root/init.project.rc \
    $(DEVICE_PATH)/rootdir/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
    $(DEVICE_PATH)/rootdir/init.sensor_1_0.rc:root/init.sensor_1_0.rc \
    $(DEVICE_PATH)/rootdir/ueventd.mt6735.rc:root/ueventd.mt6735.rc

#    $(DEVICE_PATH)/rootdir/factory_init.connectivity.rc:root/factory_init.connectivity.rc \
#    $(DEVICE_PATH)/rootdir/factory_init.project.rc:root/factory_init.project.rc \
#    $(DEVICE_PATH)/rootdir/factory_init.rc:root/factory_init.rc \
#    $(DEVICE_PATH)/rootdir/factory_init.usb.rc:root/factory_init.usb.rc \

#    $(DEVICE_PATH)/rootdir/meta_init.connectivity.rc:root/meta_init.connectivity.rc \
#    $(DEVICE_PATH)/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
#    $(DEVICE_PATH)/rootdir/meta_init.rc:root/meta_init.rc \
#    $(DEVICE_PATH)/rootdir/multi_init.rc:root/multi_init.rc \


# Seccomp policy
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/seccomp_policy/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy \
    $(DEVICE_PATH)/seccomp_policy/mediaextractor.policy:system/vendor/etc/seccomp_policy/mediaextractor.policy

# Swap
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/enableswap.sh:root/enableswap.sh \
    $(DEVICE_PATH)/rootdir/fstab.swap:root/fstab.swap

# TWRP
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/etc/twrp.fstab:recovery/root/etc/twrp.fstab

# Include other device specific configs
include $(DEVICE_PATH)/inc_device/*.mk
