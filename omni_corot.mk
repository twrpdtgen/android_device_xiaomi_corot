#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from corot device
$(call inherit-product, device/xiaomi/corot/device.mk)

PRODUCT_DEVICE := corot
PRODUCT_NAME := omni_corot
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 23078PND5G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="miodm_corot_eea-user 13 TP1A.220624.014 V816.0.3.0.UMLEUXM release-keys"

BUILD_FINGERPRINT := Xiaomi/corot_eea/corot:13/TP1A.220624.014/V816.0.3.0.UMLEUXM:user/release-keys
