#$L$
# Copyright (C) 2011 Ridgerun (http://www.ridgerun.com). 
##$L$

.PHONY: build install clean

include ../../bsp/classes/rrsdk.class
include ../../bsp/classes/fetcher.defs
include ../../bsp/mach/Make.conf


ifeq ($(CONFIG_TOOLCHAIN_HARDFP),y)
PKG_TARBALL=imx-gpu-viv-5.0.11.p4.1-hfp.tar.gz
PKG_SHA1SUM=47c97da984b261fd95f17144d168af01b93adffb
else
PKG_TARBALL=imx-gpu-viv-5.0.11.p4.1-sfp.tar.gz
PKG_SHA1SUM=69227c7a9b36c7f348d167015cfd6365f903dcb8
endif


FETCHER_EXTRACT_DIRECTORY_NAME=src

USRDIR=/usr
OPTDIR=/opt

build:rrfetched
	 $(V) cp -rpa src/g2d/$(USRDIR)/include/* $(FSDEVROOT)/usr/include
	 $(V) cp -rpa src/g2d/$(USRDIR)/lib/*  $(FSDEVROOT)/usr/lib
	 $(V) cp -rpa src/gpu-core/$(USRDIR)/include/* $(FSDEVROOT)/usr/include
	 $(V) cp -rpa src/gpu-core/$(USRDIR)/lib/*  $(FSDEVROOT)/usr/lib
	 $(V) rm $(FSDEVROOT)/usr/lib/libEGL-x11.so
	 $(V) rm $(FSDEVROOT)/usr/lib/libEGL-wl.so
	 $(V) rm $(FSDEVROOT)/usr/lib/libGAL-x11.so
	 $(V) rm $(FSDEVROOT)/usr/lib/libGAL-wl.so
	 $(V) rm $(FSDEVROOT)/usr/lib/libGAL_egl.wl.so
	 $(V) rm $(FSDEVROOT)/usr/lib/libVIVANTE-x11.so
	 $(V) rm $(FSDEVROOT)/usr/lib/libVIVANTE-wl.so
	 @touch $(BUILT_FLAG)
	 
install:
	$(V) cp -rpa src/g2d/$(USRDIR)/lib/*  $(FSROOT)/usr/lib
ifdef CONFIG_PROPRIETARY_FSL_G2D_SAMPLE_APPS
	$(V) mkdir -p $(FSROOT)/opt
	$(V) cp -rpa src/gpu-demos/$(OPTDIR)/fsl-samples/  $(FSROOT)/opt
endif

	$(V) cp -rpa src/gpu-core/$(USRDIR)/lib/*  $(FSROOT)/usr/lib
	$(V) rm $(FSROOT)/usr/lib/libEGL-x11.so
	$(V) rm $(FSROOT)/usr/lib/libEGL-wl.so
	$(V) rm $(FSROOT)/usr/lib/libGAL-x11.so
	$(V) rm $(FSROOT)/usr/lib/libGAL-wl.so
	$(V) rm $(FSROOT)/usr/lib/libGAL_egl.wl.so
	$(V) rm $(FSROOT)/usr/lib/libVIVANTE-x11.so
	$(V) rm $(FSROOT)/usr/lib/libVIVANTE-wl.so

ifdef CONFIG_PROPRIETARY_FSL_VIVANTE_SAMPLE_APPS
	$(V) mkdir -p $(FSROOT)/opt
	$(V) cp -rpa src/gpu-demos/$(OPTDIR)/viv_samples/  $(FSROOT)/opt
endif
ifdef CONFIG_PROPRIETARY_GPU_APITRACE
	$(V) cp -rpa src/apitrace/$(USRDIR)/bin/* $(FSROOT)/usr/bin/
	$(V) cp -rpa src/apitrace/$(USRDIR)/lib/* $(FSROOT)/usr/lib/
endif
ifdef CONFIG_PROPRIETARY_GPU_TOOLS
	$(V) cp -rpa src/gpu-tools/gmem-info/$(USRDIR)/bin/* $(FSROOT)/usr/bin/
endif
	@touch $(INSTALLED_FLAG)
	
clean:
	$(V)if [ -f $(BUILT_FLAG) ] ; then \
		rm $(BUILT_FLAG); \
	fi;
	$(V)if [ -f $(INSTALLED_FLAG) ] ; then \
		rm $(INSTALLED_FLAG); \
	fi;
	
distclean: clean
	$(V)if [ -f $(FETCHED_FLAG) ] ; then \
		rm $(FETCHED_FLAG); \
	fi;
	$(V)if [ -e src ] ; then \
		rm -rf src; \
	fi;
	 
