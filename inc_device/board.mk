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

# MTK H/W Hooks
BOARD_USES_MTK_HARDWARE := true

# CM H/W Hooks
BOARD_USES_CYANOGEN_HARDWARE := true
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/lineagehw

# Audio
BOARD_USES_MTK_AUDIO := true

# Audio, disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_BLUETOOTH_BDROID_HCILP_INCLUDED := 0

# Camera
USE_CAMERA_STUB := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

# Dalvik Tweak
PRODUCT_TAGS += dalvik.gc.type-precise

# Display/Graphics
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_ALLOW_EGL_HIBERNATION := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
OVERRIDE_RS_DRIVER := libRSDriver_mtk.so

# FM Radio
BOARD_HAVE_FM_RADIO := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# GPS
BOARD_MEDIATEK_USES_GPS := true
BOARD_GPS_LIBRARIES := true
BOARD_AGPS_SUPL_LIBRARIES := true

# Light HAL
TARGET_PROVIDES_LIBLIGHT := true

# Minikin text layout engine
USE_MINIKIN := true

# RIL
BOARD_PROVIDES_LIBRIL := false
BOARD_PROVIDES_RILD := false
BOARD_RIL_CLASS := ../../../../$(DEVICE_PATH)/ril

# SW Gatekeeper
BOARD_USE_SOFT_GATEKEEPER := true

# Lineage SEPolicy flags
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# WiFi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_P2P := P2P
