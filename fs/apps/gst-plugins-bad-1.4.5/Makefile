#$L$
# Copyright (C) 2015 Ridgerun (http://www.ridgerun.com). 
##$L$

PKG_URL=http://gstreamer.freedesktop.org/src/gst-plugins-bad/
PKG_TARBALL=gst-plugins-bad-1.4.5.tar.xz
PKG_SHA1SUM=81ae4e15bcce8d353b83c1d2559441925794c42e

GSTREAMER_VERSION=gstreamer-1.0

# We disable SDL because if you have installed sdl-config on the host, it will mess up
AUTOTOOLS_PARAMS = --enable-experimental --disable-sdl --disable-fieldanalysis

LIBRARIES = /usr/lib/{libgstbadbase-1.0.so.0.405.0,libgstbadvideo-1.0.so.0.405.0} \
	    /usr/lib/{libgstcodecparsers-1.0.so.0.405.0,libgstinsertbin-1.0.so.0.405.0,libgstmpegts-1.0.so.0.405.0} \
	    /usr/lib/{libgstphotography-1.0.so.0.405.0,libgsturidownloader-1.0.so.0.405.0}
LIBRARIES_OPTIONAL = /usr/lib/libgstbasecamerabinsrc-1.0.so.0.405.0

include ../../../bsp/classes/rrsdk.class
include $(CLASSES)/gstreamer-plugin.class
