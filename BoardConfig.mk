#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common msm8916-common
-include device/asus/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/Z010D

# Assert
TARGET_OTA_ASSERT_DEVICE := Z010D,ASUS_Z010D,Z010DD,ASUS_Z010DD,Z010_2

# Kernel
TARGET_KERNEL_CONFIG := zc550kl-custom_defconfig

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Enable real time lockscreen charging current values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# inherit from the proprietary version
-include vendor/asus/Z010D/BoardConfigVendor.mk
