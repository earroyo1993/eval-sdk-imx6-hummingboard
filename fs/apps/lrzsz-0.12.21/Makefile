#$L$
# Copyright (C) 2011 Ridgerun (http://www.ridgerun.com). 
##$L$

PKG_URL=https://launchpad.net/ubuntu/+archive/primary/+files/
PKG_TARBALL=lrzsz_0.12.21.orig.tar.gz
PKG_SHA1SUM=1189f17ec758c3a6ea55e36dfb68f35b97ec3c2d

BINARIES=/usr/local/bin/{lrb,lrx,lrz,lsb,lsx,lsz}
AUTOTOOLS=ACLOCAL=true AUTOCONF=true AUTOMAKE=true AUTOHEADER=true 

include ../../../bsp/classes/rrsdk.class

FETCHER_EXTRACT_DIRECTORY_NAME=src

build: rrfetched $(BUILT_FLAG)

$(BUILT_FLAG): $(CONFIGURED_FLAG)
	$(V) $(MAKE) -C src $(AUTOTOOLS) $(TOOLCHAIN_ENVIRONMENT) $(QOUT)
	$(V) touch $@

$(CONFIGURED_FLAG):
	$(V) cd src && \
	rm -rf config.cache && \
	export $(EXPORT_TOOLCHAIN_ENVIRONMENT) && \
	./configure \
	--disable-timesync \
	--disable-nls $(QOUT)
	$(V) touch $@ $(QOUT)

install: $(INSTALLED_FLAG) rrsdk_install
	$(V) ln -f -s lrz $(FSROOT)/usr/local/bin/rz $(QOUT)

$(INSTALLED_FLAG):
	$(V) $(MAKE) -C src $(AUTOTOOLS) install DESTDIR=$(FSDEVROOT) $(QOUT)
	$(V) touch $@ $(QOUT)

uninstall:
	$(V) $(MAKE) -C src $(AUTOTOOLS) uninstall $(QOUT)

clean:
	$(V) if [ -d src ] ; then \
		$(MAKE) -C src clean $(AUTOTOOLS) $(TOOLCHAIN_ENVIRONMENT) $(QOUT) ; \
	fi ;
	$(V) rm -Rf $(INSTALLED_FLAG) $(BUILT_FLAG) $(CONFIGURED_FLAG)
	$(V) rm -Rf $(FSDEVROOT)/usr/local/bin/{lrb,lrx,lrz,lsb,lsx,lsz} $(QOUT)

distclean: clean rrfetched_clean

include $(CLASSES)/fetcher.defs
include $(CLASSES)/flags.defs
