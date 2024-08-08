
##############################################################
#
# MORSE-CODE-DRIVER Final Assignment
#
##############################################################

MORSE_CODE_DRIVER_VERSION = 'fcb913fb5c8f77d35af476df08cbf67cbce8cb51'
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
	$(INSTALL) -m 0755 $(@D)/hello $(TARGET_DIR)/usr/bin/hello
endef

$(eval $(generic-package))
