ECHO_VERSION = v1.0
ECHO_SITE = $(call github,sally7118,echo,$(ECHO_VERSION))
ECHO_LICENSE = Proprietary

define ECHO_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" CFLAGS="$(TARGET_CFLAGS)" \
		LDFLAGS="$(TARGET_LDFLAGS)" -C $(@D)
endef

define ECHO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/myecho $(TARGET_DIR)/usr/bin/myecho
endef

$(eval $(generic-package))
