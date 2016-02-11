#$L$
# Copyright (C) 2015 Ridgerun (http://www.ridgerun.com). 
##$L$

QT_VERSION=5.5.1

PKG_TYPE=git
PKG_URL=git://code.qt.io/qt/qt5.git
PKG_BRANCH=5.5
PKG_NO_EXCLUDE_DOT_GIT=yes

INIT_REPO_FLAG=initialized

LIBRARIES= \
	/usr/lib/libQt5Core.so.$(QT_VERSION) \
	/usr/lib/libQt5Gui.so.$(QT_VERSION) \
	/usr/lib/libQt5Network.so.$(QT_VERSION) \
	/usr/lib/libQt5Sql.so.$(QT_VERSION) \
	/usr/lib/libQt5Test.so.$(QT_VERSION) \
	/usr/lib/libQt5Xml.so.$(QT_VERSION) \
	/usr/lib/libQt5Widgets.so.$(QT_VERSION)

LIBRARIES_OPTIONAL= \
	/usr/lib/libQt5Concurrent.so.$(QT_VERSION) \
	/usr/lib/libQt5OpenGL.so.$(QT_VERSION) \
	/usr/lib/libQt5PrintSupport.so.$(QT_VERSION) \
	/usr/lib/libQt5DBus.so.$(QT_VERSION) \
	/usr/lib/libQt5EglDeviceIntegration.so.$(QT_VERSION) \
	/usr/lib/libQt5Quick.so.$(QT_VERSION) \
	/usr/lib/libQt5Qml.so.$(QT_VERSION) \
	/usr/lib/libQt5QuickTest.so.$(QT_VERSION) \
	/usr/lib/libQt5QuickWidgets.so.$(QT_VERSION) \
	/usr/lib/libQt5QuickParticles.so.$(QT_VERSION) 
	


OTHERS= \
	/usr/plugins/bearer/{libqnmbearer.so,libqgenericbearer.so,libqconnmanbearer.so} \
	/usr/plugins/egldeviceintegrations/libqeglfs-viv-integration.so \
	/usr/plugins/generic/{libqtslibplugin.so,libqevdevtabletplugin.so,libqevdevtouchplugin.so,libqevdevkeyboardplugin.so,libqtuiotouchplugin.so,libqevdevmouseplugin.so} \
	/usr/plugins/platforms/{libqlinuxfb.so,libqoffscreen.so,libqminimal.so,libqeglfs.so,libqminimalegl.so} \
	/usr/plugins/platforminputcontexts/libibusplatforminputcontextplugin.so \
	/usr/plugins/imageformats/{libqico.so,libqjpeg.so,libqgif.so} \
	/usr/plugins/sqldrivers/libqsqlite.so
	
QT_TOOLS= \
	moc \
	qdbuscpp2xml \
	qdbusxml2cpp \
	qdoc \
	qlalr \
	rcc \
	uic

# We include this definitions here instead of the bottom of the Makefile
# because we need to get the $(ARCH) variable definition
# Also, once donwloaded the Qt top module, the submodules have to be downloaded according
# to the selected configurtation
include ../../../bsp/classes/rrsdk.class
include $(DEVDIR)/fs/Apps.defs
include $(CLASSES)/fetcher.defs

ifeq ($(CONFIG_FS_APPS_QT_DECLARATIVE),y)
OTHERS+= /usr/qml/Qt/labs/folderlistmodel/libqmlfolderlistmodelplugin.so \
		 /usr/qml/Qt/labs/settings/libqmlsettingsplugin.so \
		 /usr/qml/QtQml/Models.2/libmodelsplugin.so \
		 /usr/qml/QtQml/StateMachine/libqtqmlstatemachine.so \
		 /usr/qml/QtQuick/LocalStorage/{libqmllocalstorageplugin.so,plugins.qmltypes,qmldir} \
		 /usr/qml/QtQuick/Particles.2/{libparticlesplugin.so,plugins.qmltypes,qmldir} \
		 /usr/qml/QtQuick/Window.2/{libwindowplugin.so,plugins.qmltypes,qmldir} \
		 /usr/qml/QtQuick.2/{libqtquick2plugin.so,plugins.qmltypes,qmldir} \
		 /usr/qml/QtTest/libqmltestplugin.so
endif
ifeq ($(CONFIG_FS_APPS_QT_GRAPHICALEFFECTS),y)
OTHERS+= /usr/qml/QtGraphicalEffects/{Blend.qml,BrightnessContrast.qml,Colorize.qml,ColorOverlay.qml,ConicalGradient.qml} \
		 /usr/qml/QtGraphicalEffects/{Desaturate.qml,DirectionalBlur.qml,Displace.qml,DropShadow.qml,FastBlur.qml} \
		 /usr/qml/QtGraphicalEffects/{GammaAdjust.qml,GaussianBlur.qml,Glow.qml,HueSaturation.qml,InnerShadow.qml} \
		 /usr/qml/QtGraphicalEffects/{LevelAdjust.qml,LinearGradient.qml,MaskedBlur.qml,OpacityMask.qml,RadialBlur.qml} \
		 /usr/qml/QtGraphicalEffects/{RadialGradient.qml,RectangularGlow.qml,RecursiveBlur.qml,ThresholdMask.qml,ZoomBlur.qml,qmldir} \
		 /usr/qml/QtGraphicalEffects/private/{FastGlow.qml,FastInnerShadow.qml,FastMaskedBlur.qml,GaussianDirectionalBlur.qml} \
		 /usr/qml/QtGraphicalEffects/private/{GaussianGlow.qml,GaussianInnerShadow.qml,GaussianMaskedBlur.qml,SourceProxy.qml}
endif

#Modules
ifeq ($(CONFIG_FS_APPS_QT_DECLARATIVE),y)
QT_MODULES=qtdeclarative
endif
ifeq ($(CONFIG_FS_APPS_QT_GRAPHICALEFFECTS),y)
QT_MODULES+=qtgraphicaleffects
endif


QT_CONF_LOG=$(CURDIR)/$(ARCH)/configure.log
FETCHER_EXTRACT_DIRECTORY_NAME=src


QT_MODULES_CONFIGURATION=--no-webkit

$(FETCHED_FLAG)::
	$(V)if [ ! -e $(INIT_REPO_FLAG) ] ; \
	then \
		cd $(FETCHER_EXTRACT_DIRECTORY_NAME) &&  ./init-repository $(QT_MODULES_CONFIGURATION) $(QOUT) $(ERRQOUT); \
		cd .. && touch $(INIT_REPO_FLAG) $(QOUT) $(ERRQOUT); \
	fi;
		
# Component Function template call
define COMP_BUILD_template
$(1)$(2):
	$(V) $(ECHO) "Building $(1)...";
	$(V)if [ ! -d $(ARCH)/$(FETCHER_EXTRACT_DIRECTORY_NAME)/$(1) ] ; then \
	  cp -r $(FETCHER_EXTRACT_DIRECTORY_NAME)/$(1) $(ARCH)/$(FETCHER_EXTRACT_DIRECTORY_NAME) $(QOUT) $(ERRQOUT); \
	fi
	$(V)if [ ! -e built_$(1) ] ; then \
		cd $(ARCH)/$(FETCHER_EXTRACT_DIRECTORY_NAME)/$(1) && ../../bin/qmake -r && $(MAKE) $(QOUT) $(ERRQOUT); \
	fi
	$(V) touch built_$(1); 
endef

define COMP_INSTALL_template
$(1)$(2):
	$(V) $(ECHO) "Installing $(1)...";
	$(V)if [ ! -e installed_$(1) ] ; then \
		cd $(ARCH)/$(FETCHER_EXTRACT_DIRECTORY_NAME)/$(1) &&  $(MAKE) install $(QOUT) $(ERRQOUT); \
	fi
	$(V) touch installed_$(1); 
endef

# Create rules for components
$(foreach COMP, $(QT_MODULES), $(eval $(call COMP_BUILD_template,$(COMP),_build)))
$(foreach COMP, $(QT_MODULES), $(eval $(call COMP_INSTALL_template,$(COMP),_install)))

build: rrfetched rrpatched built$(ARCH_SUFFIX)

built$(ARCH_SUFFIX): configured$(ARCH_SUFFIX) qtbase_build $(foreach COMP, $(QT_MODULES), $(COMP)_build)
	$(V) touch $@

qtbase_build:
	$(V) $(MAKE) -C $(ARCH) -j $(BSP_NCPU) $(QOUT) $(ERRQOUT)


CONFIG_OPTIONS= \
  -v \
  -opensource \
  -confirm-license \
  -no-pch \
  -no-xcb \
  -no-opengl
 
ifeq ($(CONFIG_FS_APPS_QT_EXAMPLES),y)
  EXTRA_FILES+=opt/Qt5/examples
  CONFIG_OPTIONS+=-compile-examples -examplesdir $(FSDEVROOT)/opt/Qt5/examples
endif

ifeq ($(CONFIG_TOOLCHAIN_HARDFP),y)
    FLOAT_ABI ?= hardfp
    TOOLCHAIN_PATH=$(CONFIG_TOOLCHAIN_PATH_HARDFP)
    TOOLCHAIN_PREFIX=arm-unknown-linux-gnueabihf
else
    FLOAT_ABI ?= softfp
    TOOLCHAIN_PATH=$(CONFIG_TOOLCHAIN_PATH_SOFTFP)
    TOOLCHAIN_PREFIX=arm-linux-gnueabi
endif

CONFIG_OPTIONS+=-opengl es2 -make libs -device imx6

INSTALL_DIR ?= $(FSDEVROOT)/usr

CONFIG_OPTIONS+=-prefix /usr -hostprefix $(FSDEVROOT)/usr  -sysroot $(FSDEVROOT) -no-gcc-sysroot -extprefix $(INSTALL_DIR)
CONFIG_OPTIONS+=-device-option CROSS_COMPILE=$(TOOLCHAIN_PATH)/bin/$(TOOLCHAIN_PREFIX)-

ifeq ($(CONFIG_FS_APPS_QT_DEBUG),y)
  CONFIG_OPTIONS+=-debug
else
  CONFIG_OPTIONS+=-release
endif


QMAKE_CONF=qmake.conf
QMAKE_CONF_DEST=$(FETCHER_EXTRACT_DIRECTORY_NAME)/qtbase/mkspecs/devices/linux-imx6-g++/$(QMAKE_CONF)
configured$(ARCH_SUFFIX): rrpatched
	$(V) cp patches/arch/$(QMAKE_CONF) $(QMAKE_CONF_DEST)
	$(V) [ -d $(ARCH) ] || mkdir $(ARCH)
	$(V) cd $(ARCH) ; echo -e "yes\n" | ../$(FETCHER_EXTRACT_DIRECTORY_NAME)/qtbase/configure $(CONFIG_OPTIONS) &> $(QT_CONF_LOG)
	$(V) touch $@

installed$(ARCH_SUFFIX): $(foreach COMP, $(QT_MODULES), $(COMP)_install)
	$(V) $(MAKE) -C $(ARCH) install $(QOUT) $(ERRQOUT)
	$(V) for TOOL in $(QT_TOOLS) ; do \
		ln -sf -t $(LOCALDIR)/bin $(CURDIR)/$(ARCH)/bin/$${TOOL} ; \
		ln -sf -t $(FSDEVROOT)/usr/bin $(CURDIR)/$(ARCH)/bin/$${TOOL} ; \
	done $(QOUT) $(ERRQOUT)
	$(V) touch $@

install: installed$(ARCH_SUFFIX) rrsdk_install

clean: unpatch
	$(V) rm -Rf installed* built* configured* $(ARCH) $(QT_CONF_LOG) $(QMAKE_CONF_DEST) .qmake.vars

distclean: clean rrfetched_clean


