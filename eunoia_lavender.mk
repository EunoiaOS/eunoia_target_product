#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (eunoia_lavender,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common EunoiaOS stuff
$(call inherit-product, vendor/os/config/common_full_phone.mk)

EUNOIA_MAINTAINER := Ryne
TARGET_FACE_UNLOCK_SUPPORTED := true
PRODUCT_PACKAGES += EunoiaMaintainerLavender

# Inherit from lavender device
$(call inherit-product, device/xiaomi/lavender/device.mk)

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := lavender
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := eunoialavender
PRODUCT_MODEL := Redmi Note 7
TARGET_USES_AOSP_RECOVERY := true
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_QUICK_TAP := true
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lavender-user 10 QKQ1.190910.002 V12.5.3.0.QFGMIXM release-keys"

BUILD_FINGERPRINT := xiaomi/lavender/lavender:10/QKQ1.190910.002/V12.5.3.0.QFGMIXM:user/release-keys

endif
