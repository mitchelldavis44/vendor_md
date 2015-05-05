# Inherit AOSP device configuration for manta.
$(call inherit-product, device/samsung/manta/full_manta.mk)

# Inherit common product files.
$(call inherit-product, vendor/md/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := md_manta
PRODUCT_BRAND := google
PRODUCT_DEVICE := manta
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := samsung

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=mantaray \
    BUILD_FINGERPRINT=google/mantaray/manta:5.1/LMY47D/1743759:user/release-keys \
    PRIVATE_BUILD_DESC="mantaray-user 5.1 LMY47D 1743759 release-keys"

# Inherit media effect blobs
-include vendor/md/products/common_media_effects.mk
