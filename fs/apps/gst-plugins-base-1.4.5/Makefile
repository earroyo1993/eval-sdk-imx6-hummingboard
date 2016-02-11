#$L$
# Copyright (C) 2015 Ridgerun (http://www.ridgerun.com)
##$L$

include ../../../bsp/classes/rrsdk.class
include $(CLASSES)/gstreamer-plugin.class

PKG_URL=http://gstreamer.freedesktop.org/src/gst-plugins-base/
PKG_TARBALL=gst-plugins-base-1.4.5.tar.xz
PKG_SHA1SUM=3f7d493d61e286a913f3c8a13be08f41437d3f89

GSTREAMER_VERSION=gstreamer-1.0

AUTOTOOLS_PARAMS= --disable-rpath --disable-valgrind --disable-nls --disable-examples \
		  --disable-gtk-doc --disable-x

ifneq ($(CONFIG_FS_APPS_LIBOGG),y)
AUTOTOOLS_PARAMS+=--disable-ogg
endif

ifneq ($(CONFIG_FS_APPS_LIBVORBIS),y)
AUTOTOOLS_PARAMS+=--disable-vorbis
endif

ifneq ($(CONFIG_FS_APPS_LIBTHEORA),y)
AUTOTOOLS_PARAMS+=--disable-theora
endif

BINARIES= /usr/bin/{gst-discoverer-1.0,gst-play-1.0}
LIBRARIES= /usr/lib/{libgstallocators-1.0.so.0.405.0,libgstapp-1.0.so.0.405.0,libgstaudio-1.0.so.0.405.0,libgstfft-1.0.so.0.405.0} \
	/usr/lib/{libgstpbutils-1.0.so.0.405.0,libgstriff-1.0.so.0.405.0,libgstrtp-1.0.so.0.405.0}\
	/usr/lib/{libgstsdp-1.0.so.0.405.0,libgsttag-1.0.so.0.405.0,libgstvideo-1.0.so.0.405.0,libgstrtsp-1.0.so.0.405.0}
