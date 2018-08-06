# Copyright (C) 2013 The Android Open Source Project
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

# Work around mesa build
ALLOW_MISSING_DEPENDENCIES := true

# ARCH and CPU
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

# Pre-optimize for shorter boot time
WITH_DEXPREOPT ?= true

# Bootloader and kernel build
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := true

# Board information
TARGET_BOOTLOADER_BOARD_NAME := imx6
TARGET_BOARD_PLATFORM := imx6

# Image configuration
BOARD_KERNEL_BASE := 0x12000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x8000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=imx6
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += printk.devkmsg=on

# Image partitions
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 512
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1258291200		# 1.2G
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728		# 128M
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6147784192	# 5.8G

# Mesa DRM hwcomposer
BOARD_USES_DRM_HWCOMPOSER := true
BOARD_GPU_DRIVERS := etnaviv imx
TARGET_USES_HWC2 := true

# SELinux
BOARD_SEPOLICY_DIRS := device/nxp/imx6/sepolicy

# Manifest
DEVICE_MANIFEST_FILE := device/nxp/imx6/manifest.xml

# Matrix
DEVICE_MATRIX_FILE := device/nxp/imx6/compatibility_matrix.xml
