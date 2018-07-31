# Inherit the full_base and device configurations
$(call inherit-product, device/nxp/imx6/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Product overrides
PRODUCT_NAME := imx6
PRODUCT_DEVICE := imx6
PRODUCT_BRAND := Android
