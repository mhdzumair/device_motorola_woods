LOCAL_PATH:= $(call my-dir)
DEVICE_PATH := device/motorola/panelli

#
# libui_ext.so
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	lib/FpsCounter.cpp \
	lib/GraphicBufferUtil.cpp \
	lib/SWWatchDog.cpp \
    lib/IDumpTunnel.cpp \
    lib/RefBaseDump.cpp

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/inc \
    $(DEVICE_PATH)/include \
	external/libpng \
	external/zlib \
	external/skia/src/images \
	external/skia/include/core

LOCAL_SHARED_LIBRARIES := \
	libutils \
	libcutils \
	libbinder \
	libhardware \
    liblog \
	libdl \
	libgralloc_extra \
	libpng \
	libui

ifeq ($(MTK_MIRAVISION_SUPPORT),yes)
LOCAL_CFLAGS += -DCONFIG_FOR_SOURCE_PQ
endif

LOCAL_MODULE := libui_ext
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)



#
# libgui_ext.so
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    lib/IGuiExtService.cpp \
    lib/GuiExtService.cpp \
    lib/GuiExtClient.cpp \
    lib/GuiExtClientProducer.cpp \
    lib/GuiExtClientConsumer.cpp \
    lib/GuiExtImpl.cpp

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/inc \
    $(DEVICE_PATH)/include \

LOCAL_SHARED_LIBRARIES := \
    libutils \
    libcutils \
    libbinder \
    libhardware \
    libhardware_legacy \
    liblog \
    libgui \
    libui \
    libdl \
    libion \
    libion_mtk \
    libgralloc_extra \
    libui_ext

ifeq ($(MTK_MIRAVISION_SUPPORT),yes)
LOCAL_CFLAGS += -DCONFIG_FOR_SOURCE_PQ
endif

LOCAL_MODULE := libgui_ext
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
