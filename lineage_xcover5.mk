# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from xcover5 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := xcover5
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_xcover5
PRODUCT_MODEL := SM-G525F

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := xcover5
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="xcover5xx-user 12 SP1A.210812.016 G525FXXU5BVG3 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/xcover5xx/xcover5:12/SP1A.210812.016/G525FXXU5BVG3:user/release-keys
