################################################################################
#
# python-gpiod
#
################################################################################

PYTHON_GPIOD_VERSION = 2.1.3
PYTHON_GPIOD_SOURCE = gpiod-$(PYTHON_GPIOD_VERSION).tar.gz
PYTHON_GPIOD_SITE = https://files.pythonhosted.org/packages/a8/56/730573fe8d03c4d32a31e7182d27317b0cef298c9170b5a2994e2248986f
PYTHON_GPIOD_LICENSE = LGPL
PYTHON_GPIOD_SETUP_TYPE = setuptools

$(eval $(python-package))
