################################################################################
#
# log2ram
#
################################################################################

LOG2RAM_VERSION_MAJOR = 1.6
LOG2RAM_VERSION = $(LOG2RAM_VERSION_MAJOR).1
LOG2RAM_SOURCE = master.tar.gz
LOG2RAM_SITE = https://github.com/azlux/log2ram/archive/master.tar.gz
LOG2RAM_SITE_METHOD = wget
LOG2RAM_LICENSE = MIT
LOG2RAM_LICENSE_FILES = LICENSE
LOG2RAM_CPE_ID_VENDOR = log2ram

$(eval $(autotools-package))
