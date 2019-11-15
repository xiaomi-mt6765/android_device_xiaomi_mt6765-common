#
# Copyright (C) 2019 The LineageOS Project
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

BOARD_VENDOR := xiaomi

COMMON_PATH := device/xiaomi/mt6765-common

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_USES_64_BIT_BINDER := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Board
TARGET_NO_BOOTLOADER := true

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE := $(COMMON_PATH)/framework_manifest.xml

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1
ifeq ($(WITH_PERMISSIVE), true)
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
endif
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x11b00000 --second_offset 0x00f00000 --tags_offset 0x07880000
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_SOURCE := kernel/xiaomi/mt6765

# Dex
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    WITH_DEXPREOPT ?= true
  endif
endif
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY ?= true

# Display
VSYNC_EVENT_PHASE_OFFSET_NS := 8300000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 8300000
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0

# Graphics
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
#BOARD_VENDORIMAGE_PARTITION_SIZE := 805306368
#BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Power
TARGET_TAP_TO_WAKE_NODE := /proc/touchpanel/double_tap_enable

# Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# Recovery
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/etc/recovery.fstab
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(COMMON_PATH)/releasetools

# SELinux
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(COMMON_PATH)/sepolicy/private
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += $(COMMON_PATH)/sepolicy/public

# Treble
BOARD_VNDK_VERSION  := current
TARGET_COPY_OUT_VENDOR := vendor

# Verity
BOARD_AVB_ENABLE := false
BOARD_BUILD_DISABLED_VBMETAIMAGE := true
