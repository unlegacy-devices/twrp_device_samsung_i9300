#
# Copyright (C) 2013-2016 The CyanogenMod Project
# Copyright (C) 2017-2019 The LineageOS Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

CM_PLATFORM_SDK_VERSION := 7
override TARGET_OUT_VENDOR_SHARED_LIBRARIES = $(TARGET_OUT_SHARED_LIBRARIES)

TARGET_OTA_ASSERT_DEVICE := m0,i9300,GT-I9300

# Additional flags
TARGET_KERNEL_ADDITIONAL_FLAGS := \
    HOSTCFLAGS="-fuse-ld=lld -Wno-unused-command-line-argument"

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# CPU
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := smdk4x12
TARGET_BOARD_PLATFORM := exynos4
TARGET_BOARD_PLATFORM_GPU := mali-400mp4
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

# Boot image
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
TARGET_KERNEL_CONFIG := recovery_i9300_defconfig
BOARD_KERNEL_CMDLINE := console=ttySAC2,115200 consoleblank=0 androidboot.hardware=smdk4x12
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/i9300/bootimg.mk
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/i9300/mkbootimg.mk

# Toolchain
KERNEL_TOOLCHAIN := /opt/toolchains/arm-eabi-4.8/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12381585408
BOARD_CACHEIMAGE_PARTITION_SIZE := 1048576
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SUPPRESS_SECURE_ERASE := true
LZMA_RAMDISK_TARGETS := boot,recovery

TARGET_RECOVERY_DENSITY := hdpi
TARGET_RECOVERY_DEVICE_DIRS := device/samsung/i9300
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_DOWNLOAD_MODE := true

# TWRP
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_FSTAB := device/samsung/i9300/recovery/root/twrp.fstab
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_EXCLUDE_BASH := true
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_TZDATA := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := false
TW_NO_REBOOT_BOOTLOADER := true
TW_FORCE_USE_BUSYBOX := true

# SHRP
SHRP_DEVICE_CODE := i9300
SHRP_MAINTAINER := notnoelchannel
SHRP_LITE := true
SHRP_EXPRESS := true
SHRP_DARK := true

# PitchBlack
PB_TORCH_PATH := /sys/devices/virtual/camera/flash/rear_flash
