# Release name
PRODUCT_RELEASE_NAME := oneplus5

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := oneplus5
PRODUCT_MODEL := OnePlus5
PRODUCT_NAME := omni_oneplus5
PRODUCT_BRAND := OnePlus
PRODUCT_MANUFACTURER := OnePlus