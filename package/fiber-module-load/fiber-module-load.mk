################################################################################
#
# fiber-module-load
#
################################################################################

FIBER_MODULE_LOAD_VERSION = 1.0.0
FIBER_MODULE_LOAD_SITE = package/fiber-module-load
FIBER_MODULE_LOAD_SITE_METHOD = local
FIBER_MODULE_LOAD_INSTALL_STAGING = YES
FIBER_MODULE_LOAD_INSTALL_TARGET = YES

define FIBER_MODULE_LOAD_BUILD_CMDS
endef

define FIBER_MODULE_LOAD_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/fiber-modules.conf $(TARGET_DIR)/etc/modules-load.d
    $(INSTALL) -D -m 0755 $(@D)/fiber-module-load.service $(TARGET_DIR)/etc/systemd/system
endef


$(eval $(generic-package))
 