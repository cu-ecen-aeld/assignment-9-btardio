################################################################################
#
# libcap
#
################################################################################

#BR_NO_CHECK_HASH_FOR += strace-6.15.tar.xz

LIBCAP_EXTRA_CFLAGS += -I$(BR2_EXTERNAL_AESD_ASSIGNMENTS_PATH)/include
LIBCAP_EXTRA_CXXFLAGS += -I$(BR2_EXTERNAL_AESD_ASSIGNMENTS_PATH)/include

#STRACE_VERSION = 6.15
#STRACE_CONF_OPTS += --disable-ncurses
#STRACE_CONF_OPTS += --host=aarch64-linux-gnu
#STRACE_CONF_OPTS += --enable-static
