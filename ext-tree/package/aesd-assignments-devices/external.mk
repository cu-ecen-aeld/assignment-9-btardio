##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

AESD_ASSIGNMENTS_DEVICES_VERSION = '6e08145e87adfdc48b5ac2b8111432382d1981fe'
#'9f805baea429c2f260c3dc626467bd4c4430a282'
#'0835f221b8a9c112a52ffac2077cfa3ec6d2d1ea'
#'32678df311eb5835670467391716c32943baa6b8'
#'fcecc1d97b09b8b21039ef0addf4e1079ad02856'
#'29546bd4967892073efdc010ddc8788f1d4febdd'
#'af79ee9ca521a0a7e70d6f5c73e77484444e3a5a'
#'297a55e80c321f467891ff0acdaf3f56dfa2a86f'
#'7e74431b9607626f77de2ead91206f2af1c86480'
#'0bd5d5a348da0ed4862e528f76868aaeb483f845'
#'22c91afa9d640708431551f1e0adcb2e57ed4ca1'
#'57b8d5c50d65934dcc4c91ea5b6735cddfd51827'
#'85dcb69829cf1528ec60d42cc25001853b410e08'
#'3b5f9a634ae7bde424217f8e8c50e91b94439e47'
#'690ffc5a5a7937437e26c41ad9d1308d3423d1c8'

# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:

# Note: Unable to accomplish the git integration.

AESD_ASSIGNMENTS_DEVICES_SITE = 'git@github.com:btardio/aesd_char.git'
AESD_ASSIGNMENTS_DEVICES_SITE_METHOD = git
AESD_ASSIGNMENTS_DEVICES_GIT_SUBMODULES = YES

CROSS_COMPILE=aarch64-none-linux-gnu-
export CROSS_COMPILE

KERNELDIR=$(LINUX_DIR)
export KERNELDIR

KERNELRELEASE=$(LINUX_VERSION)
export KERNELRELEASE

# this is complaining about the gcc flags, wrong compiler
#define AESD_ASSIGNMENTS_MODULES_BUILD_CMDS
    #$(info $(KERNELRELEASE))
	#$(info $(KERNELDIR))
	#$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules/ modules
	#$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(KERNELDIR) M=$(@D)/misc-modules/ modules
#endef

# this was moved to a overlay fs per instructions in the assignment
#define AESD_ASSIGNMENTS_MODULES_INSTALL_TARGET_CMDS   
#	$(INSTALL) -m 0755 $(@D)/scull/scull.init $(TARGET_DIR)/etc/init.d/S98lddmodules
#endef

# AESD_ASSIGNMENTS_MODULES_MODULE_SUBDIRS = misc-modules/
# AESD_ASSIGNMENTS_MODULES_MODULE_SUBDIRS += scull/

$(eval $(kernel-module))
$(eval $(generic-package))

