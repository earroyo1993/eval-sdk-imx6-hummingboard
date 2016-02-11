#$L$
# Copyright (C) 2011 Ridgerun (http://www.ridgerun.com). 
##$L$

include ../../bsp/classes/rrsdk.class
include ../../bsp/classes/fetcher.defs

PKG_TARBALL=ti-connectivity.tar.gz
PKG_SHA1SUM=ab283b57a438ed5c448a52fabe062a9db8152b28
FETCHER_EXTRACT_DIRECTORY_NAME=src

build:rrfetched
	@touch rrbuilt

clean:
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
		rm -rf src; \
	fi;

install:
	@mkdir -p $(FSROOT)/lib/firmware/ti-connectivity
	@install src/* $(FSROOT)/lib/firmware/ti-connectivity
	@touch rrinstalled

