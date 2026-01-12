#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (eunoia_laurel_sprout,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common EunoiaOS stuff.
$(call inherit-product, vendor/os/config/common_full_phone.mk)

EUNOIA_MAINTAINER := Kentaro Aldanatien Ramadhan
TARGET_FACE_UNLOCK_SUPPORTED := true
PRODUCT_PACKAGES += EunoiaMaintainerLaurel_Sprout

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from laurel_sprout device
$(call inherit-product, device/xiaomi/laurel_sprout/device.mk)

PRODUCT_DEVICE := laurel_sprout
PRODUCT_NAME := eunoia_laurel_sprout
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A3
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="laurel_sprout-user 11 RKQ1.200903.002 V12.0.26.0.RFQMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/laurel_sprout/laurel_sprout:11/RKQ1.200903.002/V12.0.26.0.RFQMIXM:user/release-keys

endif
