#
# SPDX-FileCopyrightText: 2022-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/rhode/device.mk)

# Inherit some common TPP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# The Pixel Project specific variables
TARGET_BOOT_ANIMATION_RES := 1080
CUSTOM_MAINTAINER := PixelThrived
#TARGET_ENABLE_BLUR := false # God forbid you even THINK of setting this variable to true!
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_STOCK_AICORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_rhode
PRODUCT_DEVICE := rhode
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g52
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rhode_g-user 13 T2SR33.72-22-4-13 6b3c4b-075d74 release-keys" \
    BuildFingerprint=motorola/rhode_g/rhode:13/T2SR33.72-22-4-13/6b3c4b-075d74:user/release-keys \
    DeviceProduct=rhode_g
