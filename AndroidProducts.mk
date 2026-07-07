#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    aosp_polaris_mainline:$(LOCAL_DIR)/aosp_polaris_mainline.mk \
    lineage_polaris_mainline:$(LOCAL_DIR)/lineage_polaris_mainline.mk

$(foreach build_type, user userdebug eng, \
    $(eval COMMON_LUNCH_CHOICES += aosp_polaris_mainline-$(build_type)) \
    $(eval COMMON_LUNCH_CHOICES += lineage_polaris_mainline-$(build_type)))
