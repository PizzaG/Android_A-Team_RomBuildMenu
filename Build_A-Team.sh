#!/bin/bash

# Copyright (C) 2019-Present  A-Team Digital Solutions 

# DYNAMIC Variables
ROM_ZIP_NAME='aicp_*_r-16.1-UNOFFICIAL-*.zip'                      # build rom once & copy zip name it makes, * is a wildcard
ROM_MD5_NAME='aicp_*_r-16.1-UNOFFICIAL-*.zip.md5sum'               # Name of zip md5sum

# STATIC Variables
A_TEAM_PATH_1="$PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION/vendor/A-Team/FinalZip/Roms/$ROM_NAME"
A_TEAM_PATH_2="$PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION/vendor/A-Team/FinalZip"
OUT_DIRECTORY="$PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION/out/target/product/$DEVICE_CODENAME"
GAPPS="$PATH_TO_UPLOAD_11/Gapps"
NO_GAPPS="$PATH_TO_UPLOAD_11/No_Gapps"

# Upload Folder Creation for Gapps & No_Gapps 
if [ ! -d "$PATH_TO_UPLOAD_11"/Gapps ]; then
    mkdir -p "$PATH_TO_UPLOAD_11"/Gapps
    if [ ! -d "$PATH_TO_UPLOAD_11"/No_Gapps ]; then
        mkdir -p "$PATH_TO_UPLOAD_11"/No_Gapps
    fi
else
    echo -e "No Missing Upload Folders"
    echo ""
fi

## AICP
#############################
source build/envsetup.sh
echo " Cleaning Up...."
m clean
sleep 5
clear
if [ -d ~/.ccache ]; then
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
cp -R $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION/Changelog.txt $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION/out/target/product/$DEVICE_CODENAME
#
# Rom Build Commands Go Here & Vary Depending On Rom
#
#lunch aosp_$DEVICE_CODENAME-userdebug
#time m kronic
brunch $DEVICE_CODENAME
echo ""
echo " Rom Should Be Built"
echo ""
# Copy A-Team AddOns To Out Directory
cp -R $A_TEAM_PATH_2/AddOns /$OUT_DIRECTORY
cp -R $A_TEAM_PATH_2/install /$OUT_DIRECTORY
cp -R $A_TEAM_PATH_1/META-INF /$OUT_DIRECTORY
# Gapps Finished File Output
if [[ "$HAS_GAPPS" = true ]]; then 
    # Add A-Team AddOns Into Final Zip
    zip -ur $OUT_DIRECTORY/$ROM_ZIP_NAME "/META-INF" "/AddOns" "/install"
    mv $OUT_DIRECTORY/$ROM_ZIP_NAME $GAPPS
    mv $OUT_DIRECTORY/$ROM_MD5_NAME $GAPPS
else 
    # No_Gapps Finished File Output
    #  
    # Add A-Team AddOns Into Final Zip
    zip -ur $OUT_DIRECTORY/$ROM_ZIP_NAME "/META-INF" "/AddOns" "/install"
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
