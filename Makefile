ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = FFBoneScanner

FFBoneScanner_FILES = main.m
FFBoneScanner_FRAMEWORKS = UIKit
FFBoneScanner_CFLAGS = -fobjc-arc
FFBoneScanner_CODESIGN_FLAGS = -Syour_entitlements.plist

include $(THEOS_MAKE_PATH)/application.mk
