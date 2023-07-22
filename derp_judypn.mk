# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from judypn device
$(call inherit-product, device/lge/judypn/device.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# derpfest flag
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORT_FACE_UNLOCK := true
DERP_BUILDTYPE := Unofficial
BUILD_HOSTNAME := DerpFest-for-U
BUILD_USERNAME := DerpFest
WITH_GMS := true

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device identifiers

PRODUCT_NAME := derp_judypn
PRODUCT_DEVICE := judypn
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := V40 ThinQ
PRODUCT_MODEL := LM-V405

PRODUCT_GMS_CLIENTID_BASE := android-om-lg

TARGET_VENDOR_PRODUCT_NAME := judypn_lao_eea
TARGET_VENDOR_DEVICE_NAME := judypn

