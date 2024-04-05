################################################################################
#
# write-ram-logs
#
################################################################################

WRITE_RAM_LOGS_VERSION = 1.0.0
WRITE_RAM_LOGS_SITE = package/write-ram-logs
WRITE_RAM_LOGS_SITE_METHOD = local
FIBER_MODULE_LOAD_INSTALL_STAGING = YES
FIBER_MODULE_LOAD_INSTALL_TARGET = YES

define WRITE_RAM_LOGS_BUILD_CMDS
endef

define WRITE_RAM_LOGS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/write-ram-logs.service $(TARGET_DIR)/etc/systemd/system
endef

$(eval $(autotools-package))
