#
# Copyright (C) 2022 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/vivo/2026

PRODUCT_SHIPPING_API_LEVEL := 29

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fastbootd
PRODUCT_PACKAGES += \
	android.hardware.fastboot@1.0-impl-mock

# Additional binaries & libraries needed for recovery
TARGET_RECOVERY_DEVICE_MODULES += \
	libkeymaster4 \
	libpuresoftkeymasterdevice \
	ashmemd_aidl_interface-cpp \
	libashmemd_client

TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
	$(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
	$(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so \
	$(TARGET_OUT_SHARED_LIBRARIES)/ashmemd_aidl_interface-cpp.so \
	$(TARGET_OUT_SHARED_LIBRARIES)/libashmemd_client.so

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31 \
    ro.bootimage.build.date.utc=0 \
    ro.build.date.utc=0