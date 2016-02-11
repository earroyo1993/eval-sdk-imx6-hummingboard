#$L$
# Copyright (C) 2011 Ridgerun (http://www.ridgerun.com)
##$L$

include ../../bsp/classes/rrsdk.class
include ../../bsp/classes/fetcher.defs

PKG_TARBALL=imx-lib-3.10.53-1.1.0.tar.gz
PKG_SHA1SUM=70ed00f75f39c9d069d7ba39cf60ae68aae67bdf
FETCHER_EXTRACT_DIRECTORY_NAME=src

LIBRARIES=

# Build libraries
INCLUDE="-I$(FSDEVROOT)/usr/include \
-I$(KERNELDIR)/drivers/mxc/security/rng/include \
-I$(KERNELDIR)/drivers/mxc/security/sahara2/include \
-I$(KERNEL_INCLUDE)"

PLATFORM=IMX6Q

DEST_DIR=$FSDEVROOT

LIBRARIES=/usr/lib/{libipu.so.0,libpxp.so.0,libcec.so.1}
LINKS=/usr/lib/{libipu.so,libpxp.so,libcec.so}

build:rrfetched
	 $(V)$(MAKE) -C src PLATFORM=$(PLATFORM) INCLUDE=$(INCLUDE)
	 @touch rrbuilt
	 
pre_install:
	 $(V)$(MAKE) -C src install PLATFORM=$(PLATFORM) INCLUDE=$(INCLUDE) DEST_DIR=$(FSDEVROOT)

install: pre_install rrsdk_install
	@touch rrinstalled

clean::
	$(V)if [ -e src ] ; then \
		$(MAKE) -C src clean; \
	fi;
	$(V)if [ -f rrbuilt ] ; then \
		rm rrbuilt; \
	fi;
	$(V)if [ -f rrinstalled ] ; then \
		rm rrinstalled; \
	fi;

distclean: clean
	$(V)if [ -f rrfetched ] ; then \
		rm rrfetched; \
	fi;
	$(V)if [ -e src ] ; then \
		rm -r src; \
	fi;


#include $(CLASSES)/gstreamer-plugin.class

