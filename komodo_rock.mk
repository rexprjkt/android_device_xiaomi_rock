#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common komodo stuff.
$(call inherit-product, vendor/komodo/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
KOMODO_BUILD_TYPE := OFFICIAL
KOMODO_MAINTAINER := ido@rexprjkt°

# Inherit from rock device
$(call inherit-product, device/xiaomi/rock/device.mk)

PRODUCT_DEVICE := rock
PRODUCT_NAME := komodo_rock
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 11 Prime
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="missi_phone_global_ext4-user 14 UP1A.231005.007 V816.0.12.0.ULUMIXM release-keys" \
    BuildFingerprint=POCO/stone_p_global/stone:13/TP1A.220624.014/V816.0.12.0.ULUMIXM:user/release-keys
