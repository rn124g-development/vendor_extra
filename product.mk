# RRO Overlays
PRODUCT_COPY_FILES += \
    vendor/extra/config-system_ext.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/overlay/config/config.xml

PRODUCT_PACKAGES += \
    CertifiedPropsOverlay

# Updater
PRODUCT_PACKAGES += \
    Updates

PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/etc/init/init.custom-updater.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.custom-updater.rc

# keys
include certs/keys.mk

