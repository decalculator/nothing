TARGET = iphone:clang:latest
ARCHS = arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = mobileprovision

mobileprovision_FILES = src/main.mm
mobileprovision_FRAMEWORKS = Foundation Security
mobileprovision_OBJCFLAGS += -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk