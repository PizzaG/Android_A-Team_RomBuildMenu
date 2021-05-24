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
GAPPS="$PATH_TO_UPLOAD_11/Gapps"
NO_GAPPS="$PATH_TO_UPLOAD_11/No_Gapps"

# Upload Folder Creation for Gapps & No_Gapps 
if [ ! -d "$PATH_TO_UPLOAD_11"/Gapps ]; then
    mkdir "$PATH_TO_UPLOAD_11"/Gapps
    if [ ! -d "$PATH_TO_UPLOAD_11"/No_Gapps ]; then
        mkdir "$PATH_TO_UPLOAD_11"/No_Gapps
    fi
else
    echo ""
    echo -e "No Missing Upload Folders"
    echo ""
fi

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
# Copy A-Team AddOns To Out Directory
cp -R $ADD_ONS/AddOns /$OUT_DIRECTORY
cp -R $ADD_ONS/install /$OUT_DIRECTORY
cp -R $ADD_ONS_1/META-INF /$OUT_DIRECTORY
#
# Rom Build Commands Are Now AutoMagic
#
cd $SCRIPTS_DIRECTORY
$SELECTOR_BUILD_COMMANDS
echo ""
echo " Rom Should Be Built"
echo ""
cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
# Gapps Finished File Output
if [[ "$HAS_GAPPS" = true ]]; then 
    # Add A-Team AddOns Into Final Zip
    cd $OUT_DIRECTORY
    zip -ur $ROM_ZIP_NAME "META-INF" "AddOns" "install"
    mv $OUT_DIRECTORY/$ROM_ZIP_NAME $GAPPS
    mv $OUT_DIRECTORY/$ROM_MD5_NAME $GAPPS
else 
    # No_Gapps Finished File Output
    #  
    # Add A-Team AddOns Into Final Zip
    cd $OUT_DIRECTORY
    zip -ur $ROM_ZIP_NAME "META-INF" "AddOns" "install"
    mv $OUT_DIRECTORY/$ROM_ZIP_NAME $NO_GAPPS
    mv $OUT_DIRECTORY/$ROM_MD5_NAME $NO_GAPPS
fi
cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION || exit
source build/envsetup.sh
echo ""
echo " Cleaning Up...."
echo ""
m clean
#############################
#############################
