#
# Copyright (C) 2018-2021 The LineageOS Project
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

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/eunoia_dipper.mk \
    $(LOCAL_DIR)/eunoia_lavender.mk \
    $(LOCAL_DIR)/eunoia_laurel_sprout.mk \
    $(LOCAL_DIR)/eunoia_mido.mk \
    $(LOCAL_DIR)/eunoia_onclite.mk \
    $(LOCAL_DIR)/eunoia_rosy.mk \
    $(LOCAL_DIR)/eunoia_X00TD.mk

COMMON_LUNCH_CHOICES := \
    eunoia_dipper-userdebug \
    eunoia_lavender-userdebug \
    eunoia_laurel_sprout-userdebug \
    eunoia_mido-userdebug \
    eunoia_onclite-userdebug \
    eunoia_rosy-userdebug \
    eunoia_X00TD-userdebug
