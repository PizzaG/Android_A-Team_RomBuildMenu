#!/bin/bash

# Copyright (C) 2019-Present A-Team Digital Solutions
#
# Rom Build Command Auto Selector
#
clear
                  

######################################################
# Quick Heads Up
echo ""
echo "AutoMagically Selecting Rom Build Commands..."
echo ""
#echo "Select Your Option & PRESS ENTER"
#read android
############################

######################################################
# Rom 1
if [[ $ROM_NAME == $R1 ]]
then
# Output What Rom Got Selected
echo ""
echo "Your Selected Rom Appears To Be $ROM_NAME:"
echo ""
echo "Setting Rom Build Commands According To: $ROM_NAME:"
echo ""
sleep 10
clear
# Rom Build Commands
cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
brunch $DEVICE_CODENAME
# Final Zip Names
ROM_ZIP_NAME='aicp_*_r-16.1-UNOFFICIAL-*.zip'        # build rom once & copy zip name it makes, * is a wildcard
ROM_MD5_NAME='aicp_*_r-16.1-UNOFFICIAL-*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 2
elif [[ $ROM_NAME == $R2 ]]
then
# Output What Rom Got Selected
echo ""
echo "Your Selected Rom Appears To Be $ROM_NAME:"
echo ""
echo "Setting Rom Build Commands According To: $ROM_NAME:"
echo ""
sleep 10
clear
# Rom Build Commands
cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
brunch $DEVICE_CODENAME
# Final Zip Names
ROM_ZIP_NAME='Kraken-11--*UNOFFICIAL.zip'             # build rom once & copy zip name it makes, * is a wildcard
ROM_MD5_NAME='Kraken-11--*UNOFFICIAL.zip.md5sum'      # Name of zip md5sum
############################

######################################################
# Rom 3
elif [[ $ROM_NAME == $R3  ]]
then
# Output What Rom Got Selected
echo ""
echo "Your Selected Rom Appears To Be $ROM_NAME:"
echo ""
echo "Setting Rom Build Commands According To: $ROM_NAME:"
echo ""
sleep 10
clear
# Rom Build Commands
cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
lunch arrow_$DEVICE_CODENAME-userdebug
m bacon -j$(nproc --all)
# Final Zip Names
ROM_ZIP_NAME='Arrow-v11.0*UNOFFICIAL*.zip'             # build rom once & copy zip name it makes, * is a wildcard
ROM_MD5_NAME='Arrow-v11.0*UNOFFICIAL*.zip.md5sum'      # Name of zip md5sum
############################

######################################################
# Rom 4
elif [[ $ROM_NAME == $R4 ]]
then
# Output What Rom Got Selected
echo ""
echo "Your Selected Rom Appears To Be $ROM_NAME:"
echo ""
echo "Setting Rom Build Commands According To: $ROM_NAME:"
echo ""
sleep 10
clear
# Rom Build Commands
cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
brunch $DEVICE_CODENAME
# Final Zip Names
ROM_ZIP_NAME='aicp_*_r-16.1-UNOFFICIAL-*.zip'        # build rom once & copy zip name it makes, * is a wildcard
ROM_MD5_NAME='aicp_*_r-16.1-UNOFFICIAL-*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 5
elif [[ $ROM_NAME == $R5 ]]
then
# Output What Rom Got Selected
echo ""
echo "Your Selected Rom Appears To Be $ROM_NAME:"
echo ""
echo "Setting Rom Build Commands According To: $ROM_NAME:"
echo ""
sleep 10
clear
# Rom Build Commands
cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
lunch candy_$DEVICE_CODENAME-userdebug
make candy -j$(nproc --all)
# Final Zip Names
ROM_ZIP_NAME='Candy-*-11.0-UNOFFICIAL*.zip'          # build rom once & copy zip name it makes, * is a wildcard
ROM_MD5_NAME='Candy-*-11.0-UNOFFICIAL*.md5'          # Name of zip md5sum
############################

######################################################
# Rom 6
elif [[ $ROM_NAME == $R6 ]]
then
# Output What Rom Got Selected
echo ""
echo "Your Selected Rom Appears To Be $ROM_NAME:"
echo ""
echo "Setting Rom Build Commands According To: $ROM_NAME:"
echo ""
sleep 10
clear
# Rom Build Commands
cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
export TARGET_USE_GENERIC_WALLPAPER=true
lunch lineage_$DEVICE_CODENAME-userdebug
make carbon -j$(nproc --all)
# Final Zip Names
ROM_ZIP_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip'        # build rom once & copy zip name it makes, * is a wildcard
ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

############################
else
echo ""
echo "Rom Not Integrated, Please Fix Or Add Support"
echo ""
############################
fi
############################
