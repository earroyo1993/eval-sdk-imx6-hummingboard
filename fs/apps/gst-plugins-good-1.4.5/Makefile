#$L$
# Copyright (C) 2015 Ridgerun (http://www.ridgerun.com)
##$L$

PKG_URL=http://gstreamer.freedesktop.org/src/gst-plugins-good/
PKG_TARBALL=gst-plugins-good-1.4.5.tar.xz
PKG_SHA1SUM=9a416b2111429d22ff83fc492c46141d58aa3f2a

include ../../../bsp/classes/rrsdk.class
include $(CLASSES)/gstreamer-plugin.class

GSTREAMER_VERSION=gstreamer-1.0

AUTOTOOLS_PARAMS=--enable-soup=yes --disable-gdk_pixbuf --disable-libpng --disable-shout2   \
		--without-x --disable-rpath --disable-valgrind --disable-nls --disable-examples \
		--disable-aalib --disable-x --disable-xvideo  CFLAGS="$(APPS_CFLAGS)"

ifeq ($(CONFIG_FS_APPS_GSTREAMER_PLUGINS_GOOD_V4L2),y)
    APPS_CFLAGS+=-I$(DEVDIR)/kernel/$(KERNEL)/include/
    AUTOTOOLS_PARAMS+=--enable-experimental --enable-gst_v4l2 
endif
ifeq ($(CONFIG_FS_APPS_GSTREAMER_PLUGINS_GOOD_FLAC),y)
    AUTOTOOLS_PARAMS+=--enable-flac
else
    AUTOTOOLS_PARAMS+=--disable-flac
endif


