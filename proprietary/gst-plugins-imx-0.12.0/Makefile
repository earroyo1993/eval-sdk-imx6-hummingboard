#$L$
# Copyright (C) 2015 Ridgerun (http://www.ridgerun.com). 
##$L$

PKG_URL=https://github.com/Freescale/gstreamer-imx.git
PKG_TYPE=git
PKG_BRANCH=0.12.0

GSTREAMER_IMX_VERSION=0.12.0

include ../../bsp/classes/rrsdk.class

APPS_LDFLAGS+=-Wl,-rpath-link -Wl,$(FSDEVROOT)/usr/lib 
APPS_LDFLAGS+=-L$(FSDEVROOT)/usr/lib/imx-mm/audio-codec/
APPS_LDFLAGS+=-L$(FSDEVROOT)/usr/lib/imx-mm/audio-codec/wrap/

WAF_CONFIGURE_OPTIONS+=--prefix=$(FSDEVROOT)/usr --kernel-headers=$(KERNEL_INCLUDE) --egl-platform=fb

LIBRARIES+=usr/lib/libgstimxcommon.so.$(GSTREAMER_IMX_VERSION) \
		   usr/lib/libgstimxblitter.so.$(GSTREAMER_IMX_VERSION) \
		   usr/lib/libgstimxcompositor.so.$(GSTREAMER_IMX_VERSION) \
		   usr/lib/gstreamer-1.0/libgstimxvpu.so \
		   usr/lib/gstreamer-1.0/libgstimxv4l2videosrc.so \
		   usr/lib/gstreamer-1.0/libgstimxipu.so 

LIBRARIES_OPTIONAL+=usr/lib/gstreamer-1.0/libgstimxeglvivsink.so \
					usr/lib/gstreamer-1.0/libgstimxpxp.so \
					usr/lib/gstreamer-1.0/libgstimxg2d.so \
					usr/lib/gstreamer-1.0/libgstimxaudio.so

build::
	$(V) $(MAKE) coprocessors.init



#============================================================================================
# coprocessor.init creates the init script that will be used to load all the
# necessary modules into the target board
#============================================================================================

.PHONY: coprocessors.init coprocessors.init.in
coprocessors.init: coprocessors.init.in
	$(V)sed -e 's?@KERNELVERSION@?$(KERNELVERSION)?g' \
	    $< > $@


INIT_SCRIPT=coprocessors.init
INIT_SCRIPT_LEVEL=35

include $(CLASSES)/waf.class
