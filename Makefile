ARCHS = arm64
THEOS_DEVICE_PORT=22
THEOS_DEVICE_IP = 192.168.3.6
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TransparentFloatingDock
TransparentFloatingDock_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
