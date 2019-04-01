LOCAL_PATH := $(call my-dir)

## libshim_cam
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    cam/libshim_cam.cpp

LOCAL_MODULE := libshim_cam
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)


## libshim_gui
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    gui/libshim_gui.cpp \
    gui/SensorManager.cpp

LOCAL_SHARED_LIBRARIES := \
    libbinder \
    libgui \
    liblog \
    libsensor \
    libui \
    libutils

LOCAL_MODULE := libshim_gui
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)


# libshim_ifc
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    misc/netutils.c

LOCAL_SHARED_LIBRARIES := \
    libbinder \
    libcutils \
    liblog \
    libnetutils

LOCAL_MODULE := libshim_ifc
LOCAL_C_INCLUDES := system/core/libnetutils/include
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)


## libshim_ui
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    ui/libshim_ui.cpp

LOCAL_SHARED_LIBRARIES := \
    libbinder \
    libui

LOCAL_MODULE := libshim_ui
LOCAL_C_INCLUDES := frameworks/native/include
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)
