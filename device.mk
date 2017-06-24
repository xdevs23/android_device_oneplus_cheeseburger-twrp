#
# Copyright (C) 2017 The Linux Foundation
# Copyright (C) 2017 The halogenOS Project
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

PLATFORM_PATH := device/oneplus/cheeseburger

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# TWRP
PRODUCT_COPY_FILES += \
	$(PLATFORM_PATH)/recovery/root/etc/recovery.fstab:recovery/root/twrp.fstab \
	$(TARGET_PREBUILT_KERNEL):kernel \
	$(foreach _,$(shell find $(PLATFORM_PATH)/recovery/root -type f),\
		$_:$(subst $(PLATFORM_PATH),$_,))

TARGET_INCLUDED_DEVICE_MK := true
