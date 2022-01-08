#!/bin/bash

# Copyright (C) 2019-Present  A-Team Digital Solutions 

# STATIC Variables
#
# A-Team Add_Ons Location
ADD_ONS="$SCRIPTS_DIRECTORY/FinalZip"
# A-Team Add_Ons Location
ADD_ONS_1="$SCRIPTS_DIRECTORY/FinalZip/Roms/$ROM_NAME"
CHANGELOGS="$SCRIPTS_DIRECTORY/FinalZip/ChangeLogs/$ROM_NAME"
OUT_DIRECTORY="$PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION/out/target/product/$DEVICE_CODENAME"

# Upload Folder Creation for Gapps & No_Gapps 
if [ ! -d "$PATH_TO_UPLOAD"/9 ]; then
    echo "Added Missing Android 9 Folder"
    mkdir "$PATH_TO_UPLOAD"/9
else
    echo ""
    echo -e "No Missing Android 9 Upload Folders"
    echo ""
fi
####################################################
if [ ! -d "$PATH_TO_UPLOAD"/10 ]; then
    echo "Added Missing Android 10 Folder"
    mkdir "$PATH_TO_UPLOAD"/10
else
    echo ""
    echo -e "No Missing Android 10 Upload Folders"
    echo ""
fi
####################################################
if [ ! -d "$PATH_TO_UPLOAD"/11 ]; then
    echo "Added Missing Android 11 Folder"
    mkdir "$PATH_TO_UPLOAD"/11
else
    echo ""
    echo -e "No Missing Android 11 Upload Folders"
    echo ""
fi
####################################################
if [ ! -d "$PATH_TO_UPLOAD"/12 ]; then
    echo "Added Missing Android 12 Folder"
    mkdir "$PATH_TO_UPLOAD"/12
else
    echo ""
    echo -e "No Missing Android 12 Upload Folders"
    echo ""
fi
####################################################

sleep 10

## 100% Generic =)
#############################
cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
source build/envsetup.sh
echo ""
echo " Cleaning Up...."
echo ""
m clean
sleep 5
clear
if [ -d ~/.ccache ]; then
   echo ""
   echo -e "ccache Already Setup"
   echo ""
   export USE_CCACHE=1
   echo ""
else
   ccache -M 500G
   export USE_CCACHE=1
fi
export LC_ALL=C \
    WITHOUT_CHECK_API=true
mkdir $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION/out/target
mkdir $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION/out/target/product
mkdir $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION/out/target/product/$DEVICE_CODENAME
cp -R $CHANGELOGS/Changelog.txt $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION/out/target/product/$DEVICE_CODENAME
#
# Rom Build Commands Are Now AutoMagic
#
cd $SCRIPTS_DIRECTORY
$SELECTOR_BUILD_COMMANDS
echo ""
echo " Rom Should Be Built"
echo ""
cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
# Finished File Output
# Copy A-Team AddOns To Out Directory
cp -R $ADD_ONS/install /$OUT_DIRECTORY
cp -R $ADD_ONS_1/META-INF /$OUT_DIRECTORY
# Add A-Team AddOns Into Final Zip
cd $OUT_DIRECTORY
zip -ur $ROM_ZIP_NAME "META-INF" "install"
mv $ROM_ZIP_NAME $PATH_TO_UPLOAD/$ANDROID_VERSION


cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION || exit
source build/envsetup.sh
echo ""
echo " Cleaning Up...."
echo ""
m clean
#############################
#############################
