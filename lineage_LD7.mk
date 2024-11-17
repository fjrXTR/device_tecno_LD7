#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from LD7 device
$(call inherit-product, device/tecno/LD7/device.mk)

PRODUCT_DEVICE := LD7
PRODUCT_NAME := lineage_LD7
PRODUCT_BRAND := TECNO
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion-tecno-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_tssi_64_tecno-user 10 QP1A.190711.020 244546 release-keys"

BUILD_FINGERPRINT := TECNO/TSSI/LD7:10/QP1A.190711.020/220222V409:user/release-keys