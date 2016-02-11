#$L$
# Copyright (C) 2016 Ridgerun (http://www.ridgerun.com). 
##$L$

PKG_URL=git@github.com:Freescale/libimxvpuapi.git
PKG_TYPE=git
PKG_BRANCH=0.10.1

IMX_VPU_LIB_VERSION=0.10.1

include ../../bsp/classes/rrsdk.class

APPS_LDFLAGS+=-Wl,-rpath-link -Wl,$(FSDEVROOT)/usr/lib 

WAF_CONFIGURE_OPTIONS+=--prefix=$(FSDEVROOT)/usr

LIBRARIES+=usr/lib/libimxvpuapi.so.$(IMX_VPU_LIB_VERSION)

include $(CLASSES)/waf.class
