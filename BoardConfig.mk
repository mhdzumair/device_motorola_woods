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

# Headers
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Architecture/CPU
include $(DEVICE_PATH)/inc_board/arch.mk

# Audio
USE_XML_AUDIO_POLICY_CONF := 0

# Board platform
TARGET_BOARD_PLATFORM := mt6737m

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6737m
TARGET_NO_BOOTLOADER := true
TARGET_NO_FACTORYIMAGE := true

# Display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Kernel
include $(DEVICE_PATH)/inc_board/kernel.mk

# Partition
include $(DEVICE_PATH)/inc_board/partitions.mk

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/twrp.fstab

# SELinux
BOARD_SEPOLICY_DIRS := $(DEVICE_PATH)/sepolicy

# Shims
TARGET_LD_SHIM_LIBS := \
    /system/lib/libgui.so|libshim_gui.so \
    /system/lib/libnetutils.so|libshim_ifc.so \
    /system/lib/libui.so|libshim_ui.so \
    /system/vendor/lib/libcam.camadapter.so|libshim_cam.so

# System Properties
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop
