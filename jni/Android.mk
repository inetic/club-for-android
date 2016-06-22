
#android create lib-project \
	--name club \
	--target 1 \
	--path . \
	--package com.android.club

# LOCAL_PATH points to directory
# where this Android.mk is located.
LOCAL_PATH := $(call my-dir)

LOCAL_ARM_MODE := arm

TOP_DIR  := club
BASE_DIR := /base

BOOST_INCLUDE_PATH := /home/peter/project/Boost-for-Android/boost_1_58_0
BOOST_LIB_PATH     := $(LOCAL_PATH)/../../vendor/boost/lib

SOURCES := $(shell cd ./jni && find ./club/src/club -name '*.cpp')

#SOURCES := $(addprefix ../,$(SOURCES))


include $(CLEAR_VARS)

#LOCAL_LDFLAGS += -L$(BOOST_LIB_PATH)
#LOCAL_LDLIBS += -lboost_program_options-gcc-mt-$(BOOST_VERSION) \
#                -lboost_system-gcc-mt-$(BOOST_VERSION)          \
#                -lboost_filesystem-gcc-mt-$(BOOST_VERSION)      \

LOCAL_MODULE    		:= libclub

LOCAL_SRC_FILES 		:= $(SOURCES)

LOCAL_C_INCLUDES 		:= jni/club/include \
                       jni/club/src/club \
	                     $(BOOST_INCLUDE_PATH)

LOCAL_CFLAGS        := -O2 -fPIC -DPIC

include $(BUILD_STATIC_LIBRARY)

