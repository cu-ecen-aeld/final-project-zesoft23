
##############################################################
#
# MORSE-CODE-DRIVER Final Assignment
#
##############################################################

MORSE_CODE_DRIVER_VERSION = '7ce63f0e0eb8ddcf8895546fb18f19538de4f63e'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
MORSE_CODE_DRIVER_SITE = 'https://github.com/zesoft23/morse-code-driver'
MORSE_CODE_DRIVER_SITE_METHOD = git
MORSE_CODE_DRIVER_GIT_SUBMODULES = YES

define MORSE_CODE_DRIVER_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define MORSE_CODE_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/morse $(TARGET_DIR)/usr/bin/morse
endef

# $(eval $(generic-package))
