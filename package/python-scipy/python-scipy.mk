################################################################################
#
# python-scipy
#
################################################################################

PYTHON_SCIPY_VERSION = 1.3.0
PYTHON_SCIPY_SOURCE = scipy-$(PYTHON_SCIPY_VERSION).tar.gz
PYTHON_SCIPY_SITE = https://files.pythonhosted.org/packages/cb/97/361c8c6ceb3eb765371a702ea873ff2fe112fa40073e7d2b8199db8eb56e
PYTHON_SCIPY_SETUP_TYPE = setuptools
PYTHON_SCIPY_LICENSE = BSD-3c
PYTHON_SCIPY_LICENSE_FILES = LICENSE.txt
PYTHON_SCIPY_INSTALL_STAGING = YES

PYTHON_SCIPY_DEPENDENCIES = host-python-numpy python-numpy
#liblapack

# python-scipy needs lapack sources to build.
PYTHON_SCIPY_ENV = \
	LDSHARED="$(TARGET_CROSS)gcc" \
	F70="$(TARGET_FC)" \
	F90="$(TARGET_FC)" \
	FC="$(TARGET_FC)" \
	LAPACK_SRC=$(LAPACK_DIR) \
	BLAS_SRC=$(LAPACK_DIR) \
	LAPACK=$(STAGING_DIR)/usr/lib \
	BLAS=$(STAGING_DIR)/usr/lib \
	ATLAS=none \
	LDFLAGS="$(TARGET_LDFLAGS) -shared -L$(STAGING_DIR)/usr/lib/python$(PYTHON3_VERSION_MAJOR)/site-packages/numpy/core/lib"

PYTHON_SCIPY_BUILD_OPTS = config_fc --fcompiler=gnu95

$(eval $(python-package))
