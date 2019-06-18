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


# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE          := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE 	:= 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE 	:= 1887436800
BOARD_USERDATAIMAGE_PARTITION_SIZE 	:= 4698144768
BOARD_CACHEIMAGE_PARTITION_SIZE 	:= 419430400
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USES_MKE2FS := true # Use MKE2FS for creating ext4 images
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs
#BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
