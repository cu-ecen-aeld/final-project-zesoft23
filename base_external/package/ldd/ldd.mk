
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

LDD_VERSION = '8beb03a46d8acca4c050a63c8f986819d9d5fc4e'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-zesoft23.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules scull

define LDD_BUILD_CMDS
	$(MAKE) -C $(@D)/scull
	$(MAKE) -C $(@D)/misc-modules
endef

define LDD_INSTALL_TARGET_CMDS

	$(INSTALL) -d 0755 $(@D)/scull $(TARGET_DIR)/etc/scull
	$(INSTALL) -m 0755 $(@D)/scull/*  $(TARGET_DIR)/etc/scull/
	$(INSTALL) -d 0755 $(@D)/misc-modules $(TARGET_DIR)/etc/misc-modules
	$(INSTALL) -m 0755 $(@D)/misc-modules/* $(TARGET_DIR)/etc/misc-modules/

	$(INSTALL) -m 0755 $(@D)/scripts/load-assignment-7-module $(TARGET_DIR)/etc/init.d/S98lddmodules


endef

$(eval $(kernel-module))
$(eval $(generic-package))
