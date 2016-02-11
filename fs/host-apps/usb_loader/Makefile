#$L$
# Copyright (C) 2011 Ridgerun (http://www.ridgerun.com). 
##$L$

include ../../../bsp/classes/rrsdk_local.class
include ../../../bsp/classes/fetcher.defs

PKG_TARBALL=usb-loader-1.0.tar.gz
PKG_SHA1SUM=ef3912e8a181e14c412b8d3e7f502f514f39aa89
FETCHER_EXTRACT_DIRECTORY_NAME=src

build:rrfetched
	$(V) make -C src
	$(V) touch $(BUILT_FLAG)
	
install:
	$(V) touch $(INSTALLED_FLAG)
	
clean:
	$(V)if [ -f $(BUILT_FLAG) ] ; then \
		rm $(BUILT_FLAG); \
	fi;
	$(V)if [ -f $(INSTALLED_FLAG) ] ; then \
		rm $(INSTALLED_FLAG); \
	fi;
	$(V) make -C src clean

distclean: clean
	$(V)if [ -f $(FETCHED_FLAG) ] ; then \
		rm $(FETCHED_FLAG); \
		rm -r src; \
	fi;
