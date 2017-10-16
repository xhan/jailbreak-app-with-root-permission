include $(theos)/makefiles/common.mk

APPLICATION_NAME = crackMe2
crackMe2_FILES = main.m ViewController.m
crackMe2_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

before-package::
	@sh sudoapp.sh
