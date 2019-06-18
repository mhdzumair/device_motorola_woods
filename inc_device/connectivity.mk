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

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bluetooth/auto_pair_devlist.conf:system/vendor/etc/bluetooth/auto_pair_devlist.conf \
    $(LOCAL_PATH)/configs/bluetooth/bt_stack.conf.debug:system/vendor/etc/bluetooth/bt_stack.conf.debug \
    $(LOCAL_PATH)/configs/bluetooth/bt_did.conf:system/vendor/etc/bluetooth/bt_did.conf \
    $(LOCAL_PATH)/configs/bluetooth/bt_stack.conf:system/vendor/etc/bluetooth/bt_stack.conf \
    $(LOCAL_PATH)/configs/bluetooth/bt_stack.conf.sqc:system/vendor/etc/bluetooth/bt_stack.conf.sqc

# DHCP Daemon
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/dhcpcd/dhcpcd-run-hooks:system/vendor/etc/dhcpcd/dhcpcd-run-hooks

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/dhcpcd/dhcpcd-hooks/20-dns.conf:system/vendor/etc/dhcpcd/dhcpcd-hooks/20-dns.conf \
    $(LOCAL_PATH)/configs/dhcpcd/dhcpcd-hooks/95-configured:system/vendor/etc/dhcpcd/dhcpcd-hooks/95-configured

# DHCPv6
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6c.conf:system/vendor/etc/wide-dhcpv6/dhcp6c.conf \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6cctlkey:system/vendor/etc/wide-dhcpv6/dhcp6cctlkey \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6cDNS.conf:system/vendor/etc/wide-dhcpv6/dhcp6cDNS.conf \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6s.conf:system/vendor/etc/wide-dhcpv6/dhcp6s.conf \
    $(LOCAL_PATH)/configs/wide-dhcpv6/dhcp6c.script:system/vendor/etc/wide-dhcpv6/dhcp6c.script

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/slp_conf:system/vendor/etc/slp_conf \
    $(LOCAL_PATH)/configs/gps/gps.conf:system/vendor/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/agps_profiles_conf2.xml:system/vendor/etc/agps_profiles_conf2.xml

# Radvd
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/radvd/radvd.conf:system/vendor/etc/radvd/radvd.conf

# Telephony
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/telephony/spn-conf.xml:system/etc/spn-conf.xml

# Telephony Emergency List
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/telephony/cdma_ecc_list.xml:system/etc/cdma_ecc_list.xml \
    $(LOCAL_PATH)/configs/telephony/cdma_ecc_list_ss.xml:system/etc/cdma_ecc_list_ss.xml \
    $(LOCAL_PATH)/configs/telephony/ecc_list.xml:system/etc/ecc_list.xml \
    $(LOCAL_PATH)/configs/telephony/mccmnc_emergency_number_table.xml:system/etc/mccmnc_emergency_number_table.xml \
    $(LOCAL_PATH)/configs/telephony/sim_lock_emergency_numbers.xml:system/etc/sim_lock_emergency_numbers.xml

# Tethering
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd/hostapd.accept:system/vendor/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd/hostapd_default.conf:system/vendor/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/configs/hostapd/hostapd.deny:system/vendor/etc/hostapd/hostapd.deny

# WiFi Supplicant
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/vendor/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:system/vendor/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/vendor/etc/wifi/wpa_supplicant_overlay.conf
