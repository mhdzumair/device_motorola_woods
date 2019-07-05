#!/bin/bash
cd ../../../..
cd system/core
patch -p1 < ../../device/motorola/woods/patches/system_core/system_core.patch
patch -p1 < ../../device/motorola/woods/patches/system_core/system_core-4.patch
patch -p1 < ../../device/motorola/woods/patches/system_core/system_core-3.patch
patch -p1 < ../../device/motorola/woods/patches/system_core/system_core-2.patch
patch -p1 < ../../device/motorola/woods/patches/system_core/system_core-5.patch
patch -p1 < ../../device/motorola/woods/patches/system_core/system_core-6.patch
patch -p1 < ../../device/motorola/woods/patches/system_core/system_core-7.patch
cd ../..
cd bionic
patch -p1 < ../device/motorola/woods/patches/bionic/bionic.patch
cd ..
cd system/sepolicy
patch -p1 < ../../device/motorola/woods/patches/system_sepolicy/system_sepolicy.patch
cd ../..
cd frameworks/av
patch -p1 < ../../device/motorola/woods/patches/frameworks_av/frameworks_av.patch
patch -p1 < ../../device/motorola/woods/patches/frameworks_av/frameworks_av-2.patch
cd ../..
cd frameworks/native
patch -p1 < ../../device/motorola/woods/patches/frameworks_native/frameworks_native.patch
cd ../..
cd frameworks/base
patch -p1 < ../../device/motorola/woods/patches/frameworks_base/frameworks_base.patch
patch -p1 < ../../device/motorola/woods/patches/frameworks_base/frameworks_base-2.patch
patch -p1 < ../../device/motorola/woods/patches/frameworks_base/frameworks_base-3.patch
patch -p1 < ../../device/motorola/woods/patches/frameworks_base/frameworks_base-4.patch
cd ../..
cd frameworks/opt/telephony
patch -p1 < ../../../device/motorola/woods/patches/frameworks_opt_telephony/frameworks_opt_telephony.patch
cd ../../..
cd system/netd
patch -p1 < ../../device/motorola/woods/patches/system_netd/system_netd.patch
cd ../..
cd external/wpa_supplicant_8
patch -p1 < ../../device/motorola/woods/patches/external_wpa_supplicant_8/external_wpa_supplicant_8.patch
patch -p1 < ../../device/motorola/woods/patches/external_wpa_supplicant_8/external_wpa_supplicant_8-2.patch
cd ../..
cd packages/apps/Snap
patch -p1 < ../../../device/motorola/woods/patches/packages_apps_snap/packages_apps_snap.patch
git clean -f
cd ../Settings
patch -p1 < ../../../deviceptorola/woods/patches/packages_apps_settings/packages_apps_settings.patch
patch -p1 -b < ../../../device/motorola/woods/patches/packages_apps_settings/packages_apps_settings-2.patch
patch -p1 -b < ../../../device/motorola/woods/patches/packages_apps_settings/packages_apps_settings-3.patch
git clean -fd
cd ../../..
