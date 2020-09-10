################################################################################
#
# python-pyaudio
#
################################################################################

PYTHON_PYAUDIO_VERSION = 0.2.11
PYTHON_PYAUDIO_SOURCE = PyAudio-$(PYTHON_PYAUDIO_VERSION).tar.gz
PYTHON_PYAUDIO_SITE = https://files.pythonhosted.org/packages/ab/42/b4f04721c5c5bfc196ce156b3c768998ef8c0ae3654ed29ea5020c749a6b
PYTHON_PYAUDIO_SETUP_TYPE = setuptools
PYTHON_PYAUDIO_LICENSE = BSD-3c
PYTHON_PYAUDIO_LICENSE_FILES = LICENSE.txt
PYTHON_PYAUDIO_INSTALL_STAGING = YES

PYTHON_PYAUDIO_DEPENDENCIES = host-python-numpy python-numpy

# python-scipy needs lapack sources to build.
PYTHON_PYAUDIO_ENV = \
	LDSHARED="$(TARGET_CROSS)gcc" \
	F70="$(TARGET_FC)" \
	F90="$(TARGET_FC)" \
	FC="$(TARGET_FC)" \
	LDFLAGS="$(TARGET_LDFLAGS) -shared -L$(STAGING_DIR)/usr/lib/python$(PYTHON3_VERSION_MAJOR)/site-packages/numpy/core/lib"


$(eval $(python-package))
