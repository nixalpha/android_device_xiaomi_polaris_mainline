#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from device
$(call inherit-product, device/xiaomi/polaris_mainline/device.mk)

PRODUCT_NAME := lineage_polaris_mainline
PRODUCT_DEVICE := polaris_mainline
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi MIX 2S

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="polaris-user 8.0.0 OPR1.170623.032 V9.5.19.0.ODGMIFA release-keys" \
    BuildFingerprint=Xiaomi/polaris/polaris:8.0.0/OPR1.170623.032/V9.5.19.0.ODGMIFA:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
