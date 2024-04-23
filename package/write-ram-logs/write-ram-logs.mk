################################################################################
#
# write-ram-logs
#
################################################################################

WRITE_RAM_LOGS_VERSION = 1.0.0
WRITE_RAM_LOGS_SITE = package/write-ram-logs
WRITE_RAM_LOGS_SITE_METHOD = local
WRITE_RAM_LOGS_INSTALL_STAGING = YES
WRITE_RAM_LOGS_INSTALL_TARGET = YES

define WRITE_RAM_LOGS_BUILD_CMDS
    $(info $(wildcard $(@D)/*))
endef

define WRITE_RAM_LOGS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/write-ram-logs.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -D -m 0755 $(@D)/write-ram-logs.service $(TARGET_DIR)/etc/systemd/system
	$(INSTALL) -D -m 0755 $(@D)/write-ram-logs.timer $(TARGET_DIR)/etc/systemd/system
endef


$(eval $(generic-package))
