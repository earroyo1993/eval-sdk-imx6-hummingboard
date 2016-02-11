#$L$
# Copyright (C) 2015 Ridgerun (http://www.ridgerun.com). 
##$L$

PKG_TARBALL=libfslparser-4.0.7.tar.gz
PKG_SHA1SUM=d8dca913a753477dea2a61a47c91d0e0065db70e

include ../../bsp/classes/rrsdk.class
include $(CLASSES)/autotools.class

APPS_LDFLAGS+=-Wl,--rpath-link -Wl,$(FSDEVROOT)/usr/lib 

ifeq ($(CONFIG_TOOLCHAIN_HARDFP),y)
    FP= hfp
    AUTOTOOLS_PARAMS+= --enable-fhw
else
    FP= sfp
    AUTOTOOLS_PARAMS+= --enable-fsw
endif

AUTOTOOLS_PARAMS+= LDFLAGS="$(APPS_LDFLAGS)" CFLAGS="$(APPS_CFLAGS)"

LIBRARIES= \
		/usr/lib/imx-mm/parser/{lib_avi_parser_arm11_elinux_$(FP).so.3.1,lib_avi_parser_arm11_elinux.so.3.1} \
		/usr/lib/imx-mm/parser/{lib_avi_parser_arm9_elinux_$(FP).so.3.1,lib_avi_parser_arm9_elinux.so.3.1} \
		/usr/lib/imx-mm/parser/{lib_flv_parser_arm11_elinux_$(FP).so.3.1,lib_flv_parser_arm11_elinux.so.3.1} \
		/usr/lib/imx-mm/parser/{lib_flv_parser_arm9_elinux_$(FP).so.3.1,lib_flv_parser_arm9_elinux.so.3.1} \
		/usr/lib/imx-mm/parser/{lib_mkv_parser_arm11_elinux_$(FP).so.3.1,lib_mkv_parser_arm11_elinux.so.3.1} \
		/usr/lib/imx-mm/parser/{lib_mkv_parser_arm9_elinux_$(FP).so.3.1,lib_mkv_parser_arm9_elinux.so.3.1} \
		/usr/lib/imx-mm/parser/{lib_mp4_parser_arm11_elinux_$(FP).so.3.2,lib_mp4_parser_arm11_elinux.so.3.2} \
		/usr/lib/imx-mm/parser/{lib_mp4_parser_arm9_elinux_$(FP).so.3.2,lib_mp4_parser_arm9_elinux.so.3.2} \
		/usr/lib/imx-mm/parser/{lib_mpg2_parser_arm11_elinux_$(FP).so.3.1,lib_mpg2_parser_arm11_elinux.so.3.1} \
		/usr/lib/imx-mm/parser/{lib_mpg2_parser_arm9_elinux_$(FP).so.3.1,lib_mpg2_parser_arm9_elinux.so.3.1} \
		/usr/lib/imx-mm/parser/{lib_ogg_parser_arm11_elinux_$(FP).so.3.1,lib_ogg_parser_arm11_elinux.so.3.1} \
		/usr/lib/imx-mm/parser/{lib_ogg_parser_arm9_elinux_$(FP).so.3.1,lib_ogg_parser_arm9_elinux.so.3.1} \
		/usr/lib/{lib_mp3_parser_arm11_elinux.so.3.1,lib_mp3_parser_arm9_elinux.so.1}


