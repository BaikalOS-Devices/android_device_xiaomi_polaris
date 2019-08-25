#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/xiaomi/polaris/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/baikalos/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := baikalos_polaris
PRODUCT_DEVICE := polaris
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 2S
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Xiaomi/polaris/polaris:9/PKQ1.180729.001/V10.2.2.0.PDGMIXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="polaris-user 9 PKQ1.180729.001 V10.2.2.0.PDGMIXM release-keys" \
    PRODUCT_NAME="polaris" \
    TARGET_DEVICE="polaris"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# BaikalOS Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Andrey Shidakov (andr68rus) and Sergey Vasiliev (sdv22)"
