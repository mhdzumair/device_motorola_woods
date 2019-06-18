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
    android.hardware.audio@2.0-impl \
    android.hardware.audio@2.0-service \
#    android.hardware.audio.common@2.0-impl \
#    android.hardware.audio.common@2.0-service \
#    android.hardware.audio.effect@2.0-impl \
#    android.hardware.audio.effect@2.0-service

PRODUCT_PACKAGES += \
    android.hardware.soundtrigger@2.0-impl \
#    android.hardware.soundtrigger@2.0-service

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service
#    camera.device@1.0-impl \
#    camera.device@3.2-impl \

# Configstore
SPRODUCT_PACKAGES += \
#    android.hardware.configstore@1.0-impl \
#    android.hardware.configstore@1.0-service

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
#    android.hardware.drm@1.0-service.widevine

# FMRadio
PRODUCT_PACKAGES += \
    android.hardware.broadcastradio@1.0-impl

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl \
    android.hardware.gnss@1.0-service

# Graphics
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service

PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service

PRODUCT_PACKAGES += \
    android.hardware.graphics.mapper@2.0-impl

PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Health
#PRODUCT_PACKAGES += \
#    android.hardware.health@1.0-impl \
#    android.hardware.health@1.0-service

# HIDL
#PRODUCT_PACKAGES += \
#    android.hidl.base@1.0 \
#    android.hidl.manager@1.0 \
#    android.hidl.manager@1.0-java

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Light
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    android.hardware.light@2.0-service

# Media
#PRODUCT_PACKAGES += \
#    amdroid.hardware.media@1.0-impl \
#    android.hardware.media@1.0-service

# Media: OMX support
#PRODUCT_PACKAGES += \
#    android.hardware.media.omx@1.0-impl \
#    android.hardware.media@1.0-service

# Memtrack
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service

# Power
PRODUCT_PACKAGES+= \
    android.hardware.power@1.0-impl \
#    android.hardware.power@1.0-service

# RIL
PRODUCT_PACKAGES+= \
   android.hardware.radio@1.0 \
   android.hardware.radio.deprecated@1.0

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

# Thermal
#PRODUCT_PACKAGES += \
#    android.hardware.thermal@1.0-impl \
#    android.hardware.thermal@1.0-service

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service
