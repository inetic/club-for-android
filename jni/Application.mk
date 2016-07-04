NDK_TOOLCHAIN_VERSION := 4.9
APP_STL := gnustl_static
APP_MODULES := club
#APP_ABI := armeabi-v7a
APP_CPPFLAGS += -frtti -fexceptions -std=c++14 \
                -Wno-extern-c-compat \
                -Wno-deprecated-register
APP_CFLAGS := -O3
APP_ABI := armeabi-v7a
