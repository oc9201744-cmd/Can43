# THEOS yolunu dinamik yapıyoruz (GitHub Actions uyumlu)
THEOS ?= /var/mobile/theos

# Paketleme hatasını (fakeroot) önlemek için
export FAKEROOT := 0

ARCHS = arm64
DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1
THEOS_PACKAGE_SCHEME = rootless

TWEAK_NAME = ESP

include $(THEOS)/makefiles/common.mk

ESP_FRAMEWORKS = IOKit UIKit Foundation Security QuartzCore CoreGraphics CoreText AVFoundation Accelerate GLKit SystemConfiguration GameController
ESP_LDFLAGS += JRMemory.framework/JRMemory
ESP_CCFLAGS = -std=c++14 -fno-rtti -fno-exceptions -DNDEBUG -fvisibility=hidden -Wc++14-narrowing -Wno-narrowing -Wundefined-bool-conversion -Wreturn-stack-address -Wno-error=format-security -fpermissive -fexceptions -w -s
ESP_CFLAGS = -w -fobjc-arc -Wno-deprecated-declarations -Wno-unused-variable -Wno-unused-value

# DOSYALARI BULMA: wildcard yerine shell find kullanarak klasör ismi hatalarını aşarız
ESP_FILES = TssReachability.xm PluginTssSDKLifecycle.xm \
            $(shell find . -name "*.mm") \
            $(shell find . -name "*.cpp") \
            $(shell find . -name "*.m")

ESP_OBJ_FILES = libdobby.a
ESP_LIBRARIES += substrate

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 ShadowTrackerExtra || :"
