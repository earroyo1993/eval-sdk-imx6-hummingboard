#$L$
# Copyright (C) 2015 Ridgerun (http://www.ridgerun.com)
##$L$

PKG_URL=http://gstreamer.freedesktop.org/data/src/gst-libav
PKG_TARBALL=gst-libav-1.4.5.tar.xz
PKG_SHA1SUM=546440eb7d661a063249d90a3f35cc449a27be2c

GSTREAMER_VERSION=gstreamer-1.0

AUTOTOOLS_PARAMS = -with-libav-extra-configure="--extra-cflags= \
		$(subst ",, $(CONFIG_TOOLCHAIN_ARCH_FLAGS)) --target-os=linux --as="

include ../../../bsp/classes/rrsdk.class
include $(CLASSES)/gstreamer-plugin.class

