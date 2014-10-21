# Release name
PRODUCT_RELEASE_NAME := mt2l03

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/mt2l03/device.mk)

PRODUCT_COPY_FILES += device/huawei/mt2l03/kernel:kernel

# Device identifier - this must come after all inclusions
PRODUCT_DEVICE := mt2l03
PRODUCT_NAME := omni_mt2l03
PRODUCT_BRAND := huawei
PRODUCT_MODEL := Ascend Mate 2
PRODUCT_MANUFACTURER := Huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=MT2L03
