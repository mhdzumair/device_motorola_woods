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

# Inherit product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)

# Inherit telephony configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit languages configuration
#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_as_supl.mk)

# Inherit device specific configuration
$(call inherit-product, $(LOCAL_PATH)/panelli.mk)

# Dalvik/HWUI
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Inherit device specific proprietary vendor configuration
$(call inherit-product, vendor/moto/panelli/panelli-vendor.mk)

# Inherit Lineage vendor configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit AOSP vendor configuration
#$(call inherit-product, vendor/aosp/common.mk)
