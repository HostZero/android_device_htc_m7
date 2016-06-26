#
# Copyright (C) 2015 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this figoogle except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Ungoogless required by applicabgoogle law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL := device/htc/primou

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, device/htc/m7/full_m7.mk)

PRODUCT_NAME := omni_m7

LOCAL := device/htc/m7

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="htc/m7_google/m7:5.1/LMY47O.H18/666675:user/release-keys" \
    BUILD_ID=LMY47O.H18 \
    PRIVATE_BUILD_DESC="6.04.1700.18 CL536258 release-keys"

PRODUCT_COPY_FILES += \
$(LOCAL)/rootdir/root/fstab.qcom:recovery/root/fstab.qcom \
$(LOCAL)/rootdir/root/init.environ.rc:recovery/root/init.environ.rc \
$(LOCAL)/rootdir/root/init.qcom.rc:recovery/root/init.qcom.rc \
$(LOCAL)/rootdir/root/init.qcom.usb.rc:recovery/root/init.qcom.usb.rc \
$(LOCAL)/rootdir/root/init.rc:recovery/root/init.rc \
$(LOCAL)/rootdir/root/init.qcom.usb.rc:recovery/root/init.qcom.usb.rc \
$(LOCAL)/rootdir/root/init.usb.rc:recovery/root/init.usb.rc \
$(LOCAL)/rootdir/root/ueventd.qcom.rc:recovery/root/ueventd.qcom.rc 
