LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := thermal_hal.c

LOCAL_SHARED_LIBRARIES := \
	liblog \
	libcutils \
	libhardware

LOCAL_MODULE := thermal.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := -Wno-unused-parameter

include $(BUILD_SHARED_LIBRARY)
