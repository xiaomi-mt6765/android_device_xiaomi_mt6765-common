$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 720

# Bluetooth
PRODUCT_PACKAGES += \
    audio.a2dp.default

# HIDL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/compatibility_matrix.xml:system/compatibility_matrix.xml

PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# MTK
PRODUCT_PACKAGES += \
    vendor.mediatek.hardware.radio@2.0

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Init
PRODUCT_PACKAGES += \
    init.target.rc

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ACCDET.kl:system/usr/keylayout/ACCDET.kl \
    $(LOCAL_PATH)/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# VNDK
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vndk/ld.config.26.txt:system/etc/ld.config.26.txt \
    $(LOCAL_PATH)/vndk/vndk.rc:system/etc/init/vndk.rc

# Call proprietary blob setup
$(call inherit-product-if-exists, vendor/xiaomi/mt6765-common/mt6765-common-vendor.mk)
