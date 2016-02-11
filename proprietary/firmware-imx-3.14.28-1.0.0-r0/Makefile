#$L$
# Copyright (C) 2011 Ridgerun (http://www.ridgerun.com). 
##$L$

PKG_TARBALL=firmware-imx-3.14.28-1.0.0.tar.gz
PKG_SHA1SUM=e4e45fdcb5369b5393e451783e76066d8a05bc55
FETCHER_EXTRACT_DIRECTORY_NAME=src

include ../../bsp/classes/rrsdk.class
include ../../bsp/classes/fetcher.defs

ifeq ($(CONFIG_DUAL_LITE),y)
	vpu_firmware = vpu_fw_imx6d.bin
else
	vpu_firmware = vpu_fw_imx6q.bin
endif

build:rrfetched
	@touch rrbuilt

clean::
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

install::
	@mkdir -p $(FSROOT)/lib/firmware/vpu
	@cp src/firmware/vpu/$(vpu_firmware) $(FSROOT)/lib/firmware/vpu


#include $(CLASSES)/gstreamer-plugin.class

