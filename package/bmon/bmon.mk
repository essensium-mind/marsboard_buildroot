################################################################################
#
# bmon
#
################################################################################

BMON_VERSION = 3.6
BMON_SITE = https://github.com/tgraf/bmon/releases/download/v$(BMON_VERSION)
BMON_DEPENDENCIES = host-pkgconf libconfuse libnl ncurses
BMON_LICENSE = BSD-2c
BMON_LICENSE_FILES = LICENSE
# For 0001-build-uclinux-is-also-linux.patch
BMON_AUTORECONF = YES

# link dynamically unless explicitly requested otherwise
ifeq ($(BR2_STATIC_LIBS),)
BMON_CONF_OPTS += --disable-static
else
# forgets to explicitly link with pthread for libnl
BMON_CONF_OPTS += LIBS=-lpthread
endif

$(eval $(autotools-package))
