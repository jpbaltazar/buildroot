################################################################################
#
# python-loguru
#
################################################################################

PYTHON_LOGURU_VERSION = 0.7.2
PYTHON_LOGURU_SOURCE = loguru-$(PYTHON_LOGURU_VERSION).tar.gz
PYTHON_LOGURU_SITE = https://files.pythonhosted.org/packages/9e/30/d87a423766b24db416a46e9335b9602b054a72b96a88a241f2b09b560fa8
PYTHON_LOGURU_LICENSE = MIT
PYTHON_LOGURU_LICENSE_FILES = LICENSE
PYTHON_LOGURU_SETUP_TYPE = setuptools

$(eval $(python-package))
