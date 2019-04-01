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

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init/fuelgauged_init.rc:system/vendor/etc/init/fuelgauged_init.rc \
    $(LOCAL_PATH)/configs/init/gsm0710muxd.rc:system/vendor/etc/init/gsm0710muxd.rc \
    $(LOCAL_PATH)/configs/init/init.cccifsd.rc:system/vendor/etc/init/init.cccifsd.rc \
    $(LOCAL_PATH)/configs/init/init.cccimdinit.rc:system/vendor/etc/init/init.cccimdinit.rc \
    $(LOCAL_PATH)/configs/init/init.thermal.rc:system/vendor/etc/init/init.thermal.rc \
    $(LOCAL_PATH)/configs/init/init.thermal_manager.rc:system/vendor/etc/init/init.thermal_manager.rc \
    $(LOCAL_PATH)/configs/init/init_connectivity.rc:system/vendor/etc/init/init_connectivity.rc \
    $(LOCAL_PATH)/configs/init/kpoc_charger.rc:system/vendor/etc/init/kpoc_charger.rc \
    $(LOCAL_PATH)/configs/init/md_ctrl.rc:system/vendor/etc/init/md_ctrl.rc \
    $(LOCAL_PATH)/configs/init/mtk_agpsd.rc:system/vendor/etc/init/mtk_agpsd.rc \
    $(LOCAL_PATH)/configs/init/muxreport.rc:system/vendor/etc/init/muxreport.rc \
    $(LOCAL_PATH)/configs/init/nvram_agent_binder.rc:system/vendor/etc/init/nvram_agent_binder.rc \
    $(LOCAL_PATH)/configs/init/nvram_daemon.rc:system/vendor/etc/init/nvram_daemon.rc \
    $(LOCAL_PATH)/configs/init/rild.rc:system/vendor/etc/init/rild.rc \
    $(LOCAL_PATH)/configs/init/wifi2agps.rc:system/vendor/etc/init/wifi2agps.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init/slpd.rc:system/vendor/etc/init/slpd.rc \
    $(LOCAL_PATH)/configs/init/spm_script.rc:system/vendor/etc/init/spm_script.rc \
    $(LOCAL_PATH)/configs/init/sysenv_daemon.rc:system/vendor/etc/init/sysenv_daemon.rc \
#    $(LOCAL_PATH)/configs/init/init.wod.rc:system/vendor/etc/init/init.wod.rc \
#    $(LOCAL_PATH)/configs/init/rilproxy.rc:system/vendor/etc/init/rilproxy.rc \
