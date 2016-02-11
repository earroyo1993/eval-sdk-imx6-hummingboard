#! /bin/bash

#$L$
# Copyright (C) 2013 Ridgerun (http://www.ridgerun.com). 
##$L$

# Install Directory
readonly INSTALL=/opt/linaro

# Toolchain package name
readonly TOOLCHAIN_DIR=gcc-linaro-arm-unknown-linux-gnueabihf-4.8.2-2013.07
readonly TOOLCHAIN_PACKAGE=$TOOLCHAIN_DIR.tar.bz2

if [ "$HARDFP" -eq 1 ]
then
	if [ -d "$INSTALL" ]
	then
		if ! [ -d "$INSTALL/$TOOLCHAIN_DIR" ]
		then
			wget http://www.ridgerun.com/packages/$TOOLCHAIN_PACKAGE
			sudo tar -xjf $TOOLCHAIN_PACKAGE -C $INSTALL
			rm $TOOLCHAIN_PACKAGE
		fi
	else
		sudo mkdir $INSTALL
		wget http://www.ridgerun.com/packages/$TOOLCHAIN_PACKAGE
		sudo tar -xjf $TOOLCHAIN_PACKAGE -C $INSTALL
		rm $TOOLCHAIN_PACKAGE
	fi
fi
exit 0
	
		
