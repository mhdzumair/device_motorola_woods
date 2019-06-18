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

# Android Debugging
PRODUCT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.adb.secure=0

# GPS force gnss mode
PRODUCT_PROPERTY_OVERRIDES += \
    persist.force.gps.mode=gnss

# Logs disable
PRODUCT_PROPERTY_OVERRIDES += \
    logcat.live=disable \
    profiler.force_disable_err_rpt=1 \
    profiler.force_disable_ulog=1

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0

# Root
PRODUCT_PROPERTY_OVERRIDES += \
    service.adb.root=1 \
    persist.sys.root_access=0

# SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.selinux=disable

# Tee, Microtrust
PRODUCT_PROPERTY_OVERRIDES += \
    ro.mtk_microtrust_tee_support=1

# Tethering
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# Zygote
PRODUCT_PROPERTY_OVERRIDES += \
    ro.zygote.preload.enable=0
