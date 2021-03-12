LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := showlogo/showlogo.cpp
LOCAL_MODULE := libshim_showlogo
LOCAL_SHARED_LIBRARIES := libgui
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
