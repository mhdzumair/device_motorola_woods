#!/bin/bash
cd ../../../..
cd system/core
git reset --hard && git clean -fd
cd ../..
cd bionic
git reset --hard && git clean -fd
cd ..
cd system/sepolicy
git reset --hard && git clean -fd
cd ../..
cd frameworks/av
git reset --hard && git clean -fd
cd ../..
cd frameworks/native
git reset --hard && git clean -fd
cd ../..
cd frameworks/base
git reset --hard && git clean -fd
cd ../..
cd frameworks/opt/telephony
git reset --hard && git clean -fd
cd ../../..
cd system/netd
git reset --hard && git clean -fd
cd ../..
cd external/wpa_supplicant_8
git reset --hard && git clean -fd
cd ../..
cd packages/apps/Snap*
git reset --hard && git clean -fd
git clean -f
cd ../Settings
git reset --hard && git clean -fd
git clean -fd
cd ../../..
