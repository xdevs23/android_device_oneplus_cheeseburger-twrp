# Release name
PRODUCT_RELEASE_NAME := cheeseburger

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cheeseburger
PRODUCT_MODEL := OnePlus5
PRODUCT_NAME := omni_cheeseburger
PRODUCT_BRAND := OnePlus
PRODUCT_MANUFACTURER := OnePlus