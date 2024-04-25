# blacklist-cdc-wdm.mk
#############################################################
#
# blacklist-cdc-wdm
#
#############################################################

BLACKLIST_CDC_WDM_SITE = NONE
BLACKLIST_CDC_WDM_INSTALL_STAGING = YES
BLACKLIST_CDC_WDM_INSTALL_TARGET = YES

define BLACKLIST_CDC_WDM_BUILD_CMDS
endef

define BLACKLIST_CDC_WDM_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/etc/modprobe.d
    touch $(TARGET_DIR)/etc/modprobe.d/blacklist.conf; \
	if ! grep -q "blacklist cdc-wdm" $(TARGET_DIR)/etc/modprobe.d/blacklist.conf; then \
		echo "blacklist cdc-wdm" >> $(TARGET_DIR)/etc/modprobe.d/blacklist.conf; \
	fi
endef

$(eval $(generic-package))