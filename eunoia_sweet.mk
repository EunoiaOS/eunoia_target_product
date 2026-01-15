#
# Copyright (C) 2026 The EunoiaOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (eunoia_sweet,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common Eunoia stuff.
EUNOIA_MAINTAINER := Djampt
EUNOIA_VERSION_APPEND_TIME_OF_DAY := true
PRODUCT_PACKAGES += EunoiaMaintainerSweet
$(call inherit-product, vendor/os/config/common_full_phone.mk)

PRODUCT_NAME := eunoia_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Blur
TARGET_ENABLE_BLUR := true

# Pixel Stuff
TARGET_INCLUDE_PIXEL_CHARGER := true

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sweet_global-user 13 TKQ1.221013.002 V14.0.9.0.TKFMIXM release-keys" \
    BuildFingerprint=Redmi/sweet_global/sweet:13/TKQ1.221013.002/V14.0.9.0.TKFMIXM:user/release-keys

endif
