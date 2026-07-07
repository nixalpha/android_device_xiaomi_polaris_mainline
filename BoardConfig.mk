#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/polaris_mainline

# Inherit from mi845-mainline
include device/xiaomi/mi845-mainline/BoardConfig.mk

# Boot parameters
BOARD_KERNEL_CMDLINE += \
    androidboot.hardware=polaris

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
BOARD_KERNEL_APPEND_DTBS := \
    qcom/sdm845-xiaomi-polaris-ebbg.dtb

# OTA
TARGET_OTA_ASSERT_DEVICE := polaris_mainline,polaris

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67092480
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
