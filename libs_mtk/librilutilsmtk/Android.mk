LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    librilutilsmtk.c \
    mtk_rs.c

LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/include \
    system/netd/include

LOCAL_EXPORT_C_INCLUDE_DIRS := \
    $(LOCAL_PATH)/include

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libutils \
    liblog \
    libratconfig \
    libcrypto

LOCAL_MODULE := librilutilsmtk
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional

LOCAL_PROTOC_OPTIMIZE_TYPE := nanopb-c-enable_malloc

include $(BUILD_SHARED_LIBRARY)
