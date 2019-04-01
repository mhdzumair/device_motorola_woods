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

# Audio
PRODUCT_PACKAGES += \
    audio_policy.default \
    audio_policy.stub \
    audio.a2dp.default \
    audio.primary.default \
    audio.r_submix.default \
    audio.usb.default

PRODUCT_PACKAGES += \
    libaudio-resampler \
    libaudiopolicymanagerdefault \
    libtinyalsa \
    libtinycompress \
    libtinymix \
    libtinyxml

# Audio Effects
#PRODUCT_PACKAGES += \
#    AudioFX

# Camera
PRODUCT_PACKAGES += \
   Snap

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# File Systems
PRODUCT_PACKAGES += \
    e2fsck \
    tune2fs \
    make_ext4fs

PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat

PRODUCT_PACKAGES += \
    fsck.f2fs \
    mkfs.f2fs

# FM Radio
PRODUCT_PACKAGES += \
    libfmjni \
    libfmcust \
    FMRadio

# GPS
PRODUCT_PACKAGES += \
    libcurl \
    libnl_2 \
    mnld

# LiveDisplay
PRODUCT_PACKAGES += \
    libjni_livedisplay

# Memory Heap
PRODUCT_PACKAGES += \
    libion

# Power
PRODUCT_PACKAGES += \
    power.default

# Stlport
PRODUCT_PACKAGES += \
    libstlport

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# WiFi
PRODUCT_PACKAGES += \
    hostapd \
    hostapd_cli \
    lib_driver_cmd_mt66xx \
    p2p_supplicant_overlay.conf \
    wpa_cli \
    wpa_supplicant \
    wpa_supplicant.conf \
    wpa_supplicant_overlay.conf

#
### MTK
#

# Gatekeeper, Software
#PRODUCT_PACKAGES += \
#    libSoftGatekeeper

# Log
#PRODUCT_PACKAGES += \
#    liblog_mtk

# Memory Heap
#PRODUCT_PACKAGES += \
#    libgralloc_extra \
#    libgui_ext \
#    libion_mtk \
#    libui_ext

# Power
PRODUCT_PACKAGES += \
    power.mt6737m

# RIL
#PRODUCT_PACKAGES += \
#    libccci_util \
#    libril \
#    librilutilsmtk

#PRODUCT_PACKAGES += \
#    rild

# Thermal
#PRODUCT_PACKAGES += \
#    thermal.mt6737m

# WiFi
PRODUCT_PACKAGES += \
    lib_driver_cmd_mt66xx
