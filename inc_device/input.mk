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

# Keyboard layout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/input/ACCDET.kl:system/usr/keylayout/ACCDET.kl \
    $(LOCAL_PATH)/configs/input/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl \
    $(LOCAL_PATH)/configs/input/uinput-egis.kl:system/usr/keylayout/uinput-egis.kl

# Input touch
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/input/uinput-egis.idc:system/usr/idc/uinput-egis.idc
