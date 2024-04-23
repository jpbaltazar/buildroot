# ram-logs.mk
#############################################################
#
# ram-logs
#
#############################################################

RAM_LOGS_SITE = NONE
RAM_LOGS_INSTALL_STAGING = YES
RAM_LOGS_INSTALL_TARGET = YES

define RAM_LOGS_BUILD_CMDS
endef

define RAM_LOGS_INSTALL_TARGET_CMDS
    if ! grep -q "tmpfs /var/log tmpfs defaults,noatime,nosuid,mode=0755,size=512m 0 0" $(TARGET_DIR)/etc/fstab; then \
        echo "tmpfs /var/log tmpfs defaults,noatime,nosuid,mode=0755,size=512m 0 0" >> $(TARGET_DIR)/etc/fstab; \
    fi
endef

$(eval $(generic-package))