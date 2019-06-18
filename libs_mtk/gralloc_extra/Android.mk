LOCAL_PATH := $(call my-dir)
DEVICE_PATH := device/motorola/panelli

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	GraphicBufferExtra.cpp \
	GraphicBufferExtra_hal.cpp \
	ge.c

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    $(DEVICE_PATH)/include

LOCAL_SHARED_LIBRARIES := \
	libhardware \
	libcutils \
	libutils \
    liblog \
	libion \
	libion_mtk \
	libged

LOCAL_EXPORT_C_INCLUDE_DIRS := \
    $(LOCAL_PATH)/include

LOCAL_C_INCLUDES += \
	system/core/libion/include \
	$(DEVICE_PATH)/libs_mtk/libion_mtk/include

LOCAL_MODULE := libgralloc_extra
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
