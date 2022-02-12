export ARCHS = arm64 arm64e
export PREFIX = $(THEOS)/toolchain/Xcode11.xctoolchain/usr/bin/
export SDKVERSION = 14.4

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BoomFullscreenPatch

BoomFullscreenPatch_FILES = Tweak.xm
BoomFullscreenPatch_FRAMEWORKS = UIKit
BoomFullscreenPatch_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
