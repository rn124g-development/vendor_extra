# RRO Overlays
PRODUCT_COPY_FILES += \
    vendor/extra/config-system_ext.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/overlay/config/config.xml

PRODUCT_PACKAGES += \
    CertifiedPropsOverlay

# Updater
PRODUCT_PACKAGES += \
    Updater

#PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/etc/init/init.custom-updater.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.custom-updater.rc

# Disable debugging
ART_BUILD_TARGET_NDEBUG := false
ART_BUILD_TARGET_DEBUG := false
ART_BUILD_HOST_NDEBUG := false
ART_BUILD_HOST_DEBUG := false
USE_DEX2OAT_DEBUG := false

# Check if certs/keys.mk exists
ifneq ("$(wildcard certs/keys.mk)", "")
include certs/keys.mk
else
$(error Private signing keys do not exist. If this is intentional, remove or comment this include)
endif

