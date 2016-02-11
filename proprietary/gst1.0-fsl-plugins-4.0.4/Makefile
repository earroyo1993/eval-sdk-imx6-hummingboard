#$L$
# Copyright (C) 2015 Ridgerun (http://www.ridgerun.com). 
##$L$

PKG_URL=http://www.freescale.com/lgfiles/NMG/MAD/YOCTO/
PKG_TARBALL=gst1.0-fsl-plugins-4.0.4.tar.gz
PKG_SHA1SUM=7f3977eb08b053d643fb08acb5cff7f5f2db9d65

include ../../bsp/classes/rrsdk.class

GSTREAMER_VERSION=gstreamer-1.0

APPS_LDFLAGS+=-Wl,-rpath-link  -Wl,$(FSDEVROOT)/usr/lib 
APPS_LDFLAGS+=-Wl,-rpath-link -Wl,$(FSDEVROOT)/usr/lib/imx-mm/audio-codec/
APPS_LDFLAGS+=-Wl,-rpath-link -Wl,$(FSDEVROOT)/usr/lib/imx-mm/parser/
APPS_LDFLAGS+=-Wl,-rpath-link -Wl,$(FSDEVROOT)/usr/lib/imx-mm/video-codec/ 
APPS_LDFLAGS+=-Wl,-rpath-link -Wl,$(FSDEVROOT)/usr/lib/imx-mm/audio-codec/wrap/

APPS_LDFLAGS+=-Wl,-rpath-link -Wl,$(FSDEVROOT)/usr/lib -L$(FSDEVROOT)/usr/lib/imx-mm/audio-codec/
APPS_CFLAGS+=-I$(KERNEL_INCLUDE)
APPS_CFLAGS+=-I$(FSDEVROOT)/usr/include/imx-mm/audio-codec/
APPS_CFLAGS+=-I$(FSDEVROOT)/usr/include/imx-mm/vpu/

AUTOTOOLS_PARAMS=LDFLAGS="$(APPS_LDFLAGS) -lrt -lgstimxcommon" CFLAGS="$(APPS_CFLAGS)" PLATFORM=MX6 --disable-x11 --disable-imxvideoconvert_pxp


BINARIES= /usr/bin/{gplay-1.0,grecorder-1.0}

LIBRARIES= /usr/lib/{libgplaycore-1.0.so.0.0.0,libgstfsl-1.0.so.0.0.0,librecorder_engine-1.0.so.0.0.0}
OTHERS = /usr/share/{imx_6q_display_config,imx_6sx_display_config,beep_registry_1.0.arm12.cf}
include $(CLASSES)/gstreamer-plugin.class
