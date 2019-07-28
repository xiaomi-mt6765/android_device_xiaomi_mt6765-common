LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := init.target.rc
LOCAL_MODULE_TAGS := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := etc/init.target.rc
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := patch_ril.sh
LOCAL_MODULE_TAGS := optional eng
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES := bin/patch_ril.sh
include $(BUILD_PREBUILT)
