#
# Copyright (C) 2022 The VoidUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common superior os stuff.
$(call inherit-product, vendor/superior/config/common.mk)

# Unofficial build with due respect
SUPERIOR_OFFICIAL := false

# Maintainer Flag
MAINTAINER := D-G

# GAPPS build flag, if not defined build type is vanilla
BUILD_WITH_GAPPS := true

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720

# Charging Animation
TARGET_INCLUDE_PIXEL_CHARGER := true

# Superior Prebuilts
USE_QUICKPIC := true
USE_DUCKDUCKGO := true
USE_MOTO_CALCULATOR := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_ENABLE_BLUR := false

# Quick Tap Feature
TARGET_SUPPORTS_QUICK_TAP := true

# Product Specifics
PRODUCT_NAME := superior_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-sdm
