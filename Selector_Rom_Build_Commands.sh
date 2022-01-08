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
if [[ $ROM_NAME == AICP ]]
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
#ROM_MD5_NAME='aicp_*_r-16.1-UNOFFICIAL-*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 2
elif [[ $ROM_NAME == AospK ]]
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
#ROM_MD5_NAME='Kraken-11--*UNOFFICIAL.zip.md5sum'      # Name of zip md5sum
############################

######################################################
# Rom 3
elif [[ $ROM_NAME == Arrow  ]]
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
ROM_ZIP_NAME='Arrow*UNOFFICIAL*.zip'             # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='Arrow*UNOFFICIAL*.zip.md5sum'      # Name of zip md5sum
############################

######################################################
# Rom 4
elif [[ $ROM_NAME == Awaken ]]
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
ROM_ZIP_NAME='awaken_*Sapphire-UNOFFICIAL*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='awaken_*Sapphire-UNOFFICIAL*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 5
elif [[ $ROM_NAME == Baikal ]]
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
ROM_ZIP_NAME='baikalos_*-UNOFFICIAL-*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='baikalos_*-UNOFFICIAL-*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 6
elif [[ $ROM_NAME == Bliss ]]
then
# Output What Rom Got Selected
echo ""
echo "Your Selected Rom Appears To Be $ROM_NAME:"
echo ""
echo "Setting Rom Build Commands According To: $ROM_NAME:"
echo ""
sleep 10
clear
mkdir $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION/out/target/product/$DEVICE_CODENAME/system
mkdir $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION/out/target/product/$DEVICE_CODENAME/system/etc
cp $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION/out/target/product/$DEVICE_CODENAME/Changelog.txt $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION/out/target/product/$DEVICE_CODENAME/system/etc
# Rom Build Commands
cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
if [[ "$HAS_GAPPS" = true ]]; then 
    # Gapps
    echo "Building With Gapps"
    export BLISS_BUILD_VARIANT=gapps
    lunch bliss_$DEVICE_CODENAME-userdebug
    blissify -g $DEVICE_CODENAME
elif [[ "$HAS_GAPPS" = false ]]; then 
    # No Gapps
    echo "Building Without Gapps **DEFAULT**"
    export BLISS_BUILD_VARIANT=vanilla
    lunch bliss_$DEVICE_CODENAME-userdebug
    blissify $DEVICE_CODENAME
elif [[ "$HAS_FOSS" = true ]]; then 
    # Foss- Gapps Alternative
    echo "Building With FOSS Gapps Alternative- Arm64"
    export BLISS_BUILD_VARIANT=foss
    cd vendor/A-Team/Foss
    bash update.sh 2
    cd $abt
    lunch bliss_$DEVICE_CODENAME-userdebug
    blissify -f $DEVICE_CODENAME
fi
# Final Zip Names
ROM_ZIP_NAME='Bliss-v14.3-*-UNOFFICIAL-*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='Bliss-v14.3-*-UNOFFICIAL-*.md5'        # Name of zip md5sum or just md5
############################

######################################################
# Rom 7
elif [[ $ROM_NAME == Candy ]]
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
#ROM_MD5_NAME='Candy-*-11.0-UNOFFICIAL*.md5'          # Name of zip md5sum
############################

######################################################
# Rom 8
elif [[ $ROM_NAME == Carbon ]]
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
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 9
elif [[ $ROM_NAME == Calyx ]]
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
lunch calyx_$DEVICE_CODENAME-userdebug
make -j48
# Final Zip Names + Make Calyx Custom Zip
OUT_DIRECTORY="$PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION/out/target/product/$DEVICE_CODENAME"
cd $OUT_DIRECTORY
ROM_ZIP_NAME="CalyxOS_2.9.0-$DEVICE_CODENAME.zip"        # build rom once & copy zip name it makes, * is a wildcard
zip $ROM_ZIP_NAME "boot.img" "system.img" "dtbo.img" "vbmeta.img"
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 10
elif [[ $ROM_NAME == Descendant ]]
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
lunch descendant_$DEVICE_CODENAME-userdebug
mka descendant
# Final Zip Names
ROM_ZIP_NAME='descendant_*-11.5-*-Community.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 11
elif [[ $ROM_NAME == Dot ]]
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
lunch dot_$DEVICE_CODENAME-userdebug
make bacon
# Final Zip Names
ROM_ZIP_NAME="dotOS-R-v5.2.1*.zip"        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 13
#elif [[ $ROM_NAME == $R13 ]]
#then
# Output What Rom Got Selected
#echo ""
#echo "Your Selected Rom Appears To Be $ROM_NAME:"
#echo ""
#echo "Setting Rom Build Commands According To: $ROM_NAME:"
#echo ""
#sleep 10
#clear
# Rom Build Commands
#cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
#export TARGET_USE_GENERIC_WALLPAPER=true
#lunch lineage_$DEVICE_CODENAME-userdebug
#make carbon -j$(nproc --all)
# Final Zip Names
#ROM_ZIP_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 14
#elif [[ $ROM_NAME == $R14 ]]
#then
# Output What Rom Got Selected
#echo ""
#echo "Your Selected Rom Appears To Be $ROM_NAME:"
#echo ""
#echo "Setting Rom Build Commands According To: $ROM_NAME:"
#echo ""
#sleep 10
#clear
# Rom Build Commands
#cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
#export TARGET_USE_GENERIC_WALLPAPER=true
#lunch lineage_$DEVICE_CODENAME-userdebug
#make carbon -j$(nproc --all)
# Final Zip Names
#ROM_ZIP_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 15
#elif [[ $ROM_NAME == $R15 ]]
#then
# Output What Rom Got Selected
#echo ""
#echo "Your Selected Rom Appears To Be $ROM_NAME:"
#echo ""
#echo "Setting Rom Build Commands According To: $ROM_NAME:"
#echo ""
#sleep 10
#clear
# Rom Build Commands
#cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
#export TARGET_USE_GENERIC_WALLPAPER=true
#lunch lineage_$DEVICE_CODENAME-userdebug
#make carbon -j$(nproc --all)
# Final Zip Names
#ROM_ZIP_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 16
#elif [[ $ROM_NAME == $R16 ]]
#then
# Output What Rom Got Selected
#echo ""
#echo "Your Selected Rom Appears To Be $ROM_NAME:"
#echo ""
#echo "Setting Rom Build Commands According To: $ROM_NAME:"
#echo ""
#sleep 10
#clear
# Rom Build Commands
#cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
#export TARGET_USE_GENERIC_WALLPAPER=true
#lunch lineage_$DEVICE_CODENAME-userdebug
#make carbon -j$(nproc --all)
# Final Zip Names
#ROM_ZIP_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 17
#elif [[ $ROM_NAME == $R17 ]]
#then
# Output What Rom Got Selected
#echo ""
#echo "Your Selected Rom Appears To Be $ROM_NAME:"
#echo ""
#echo "Setting Rom Build Commands According To: $ROM_NAME:"
#echo ""
#sleep 10
#clear
# Rom Build Commands
#cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
#export TARGET_USE_GENERIC_WALLPAPER=true
#lunch lineage_$DEVICE_CODENAME-userdebug
#make carbon -j$(nproc --all)
# Final Zip Names
#ROM_ZIP_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 18
#elif [[ $ROM_NAME == $R18 ]]
#then
# Output What Rom Got Selected
#echo ""
#echo "Your Selected Rom Appears To Be $ROM_NAME:"
#echo ""
#echo "Setting Rom Build Commands According To: $ROM_NAME:"
#echo ""
#sleep 10
#clear
# Rom Build Commands
#cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
#export TARGET_USE_GENERIC_WALLPAPER=true
#lunch lineage_$DEVICE_CODENAME-userdebug
#make carbon -j$(nproc --all)
# Final Zip Names
#ROM_ZIP_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 19
#elif [[ $ROM_NAME == $R19 ]]
#then
# Output What Rom Got Selected
#echo ""
#echo "Your Selected Rom Appears To Be $ROM_NAME:"
#echo ""
#echo "Setting Rom Build Commands According To: $ROM_NAME:"
#echo ""
#sleep 10
#clear
# Rom Build Commands
#cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
#export TARGET_USE_GENERIC_WALLPAPER=true
#lunch lineage_$DEVICE_CODENAME-userdebug
#make carbon -j$(nproc --all)
# Final Zip Names
#ROM_ZIP_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 20
#elif [[ $ROM_NAME == $R20 ]]
#then
# Output What Rom Got Selected
#echo ""
#echo "Your Selected Rom Appears To Be $ROM_NAME:"
#echo ""
#echo "Setting Rom Build Commands According To: $ROM_NAME:"
#echo ""
#sleep 10
#clear
# Rom Build Commands
#cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
#export TARGET_USE_GENERIC_WALLPAPER=true
#lunch lineage_$DEVICE_CODENAME-userdebug
#make carbon -j$(nproc --all)
# Final Zip Names
#ROM_ZIP_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 21
#elif [[ $ROM_NAME == $R21 ]]
#then
# Output What Rom Got Selected
#echo ""
#echo "Your Selected Rom Appears To Be $ROM_NAME:"
#echo ""
#echo "Setting Rom Build Commands According To: $ROM_NAME:"
#echo ""
#sleep 10
#clear
# Rom Build Commands
#cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
#export TARGET_USE_GENERIC_WALLPAPER=true
#lunch lineage_$DEVICE_CODENAME-userdebug
#make carbon -j$(nproc --all)
# Final Zip Names
#ROM_ZIP_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 22
#elif [[ $ROM_NAME == $R22 ]]
#then
# Output What Rom Got Selected
#echo ""
#echo "Your Selected Rom Appears To Be $ROM_NAME:"
#echo ""
#echo "Setting Rom Build Commands According To: $ROM_NAME:"
#echo ""
#sleep 10
#clear
# Rom Build Commands
#cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
#export TARGET_USE_GENERIC_WALLPAPER=true
#lunch lineage_$DEVICE_CODENAME-userdebug
#make carbon -j$(nproc --all)
# Final Zip Names
#ROM_ZIP_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 23
#elif [[ $ROM_NAME == $R23 ]]
#then
# Output What Rom Got Selected
#echo ""
#echo "Your Selected Rom Appears To Be $ROM_NAME:"
#echo ""
#echo "Setting Rom Build Commands According To: $ROM_NAME:"
#echo ""
#sleep 10
#clear
# Rom Build Commands
#cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
#export TARGET_USE_GENERIC_WALLPAPER=true
#lunch lineage_$DEVICE_CODENAME-userdebug
#make carbon -j$(nproc --all)
# Final Zip Names
#ROM_ZIP_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 24
#elif [[ $ROM_NAME == $R24 ]]
#then
# Output What Rom Got Selected
#echo ""
#echo "Your Selected Rom Appears To Be $ROM_NAME:"
#echo ""
#echo "Setting Rom Build Commands According To: $ROM_NAME:"
#echo ""
#sleep 10
#clear
# Rom Build Commands
#cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
#export TARGET_USE_GENERIC_WALLPAPER=true
#lunch lineage_$DEVICE_CODENAME-userdebug
#make carbon -j$(nproc --all)
# Final Zip Names
#ROM_ZIP_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 25
#elif [[ $ROM_NAME == $R25 ]]
#then
# Output What Rom Got Selected
#echo ""
#echo "Your Selected Rom Appears To Be $ROM_NAME:"
#echo ""
#echo "Setting Rom Build Commands According To: $ROM_NAME:"
#echo ""
#sleep 10
#clear
# Rom Build Commands
#cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
#export TARGET_USE_GENERIC_WALLPAPER=true
#lunch lineage_$DEVICE_CODENAME-userdebug
#make carbon -j$(nproc --all)
# Final Zip Names
#ROM_ZIP_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 26
#elif [[ $ROM_NAME == ExthmUi ]]
#then
# Output What Rom Got Selected
#echo ""
#echo "Your Selected Rom Appears To Be $ROM_NAME:"
#echo ""
#echo "Setting Rom Build Commands According To: $ROM_NAME:"
#echo ""
#sleep 10
#clear
# Rom Build Commands
#cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
#brunch $DEVICE_CODENAME
# Final Zip Names
#ROM_ZIP_NAME='exthm-11.0-*-NUCLEAR-SNAPSHOT-*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='exthm-11.0-*-NUCLEAR-SNAPSHOT-*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 27
#elif [[ $ROM_NAME == $R27 ]]
#then
# Output What Rom Got Selected
#echo ""
#echo "Your Selected Rom Appears To Be $ROM_NAME:"
#echo ""
#echo "Setting Rom Build Commands According To: $ROM_NAME:"
#echo ""
#sleep 10
#clear
# Rom Build Commands
#cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
#export TARGET_USE_GENERIC_WALLPAPER=true
#lunch lineage_$DEVICE_CODENAME-userdebug
#make carbon -j$(nproc --all)
# Final Zip Names
#ROM_ZIP_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 28
#elif [[ $ROM_NAME == $R28 ]]
#then
# Output What Rom Got Selected
#echo ""
#echo "Your Selected Rom Appears To Be $ROM_NAME:"
#echo ""
#echo "Setting Rom Build Commands According To: $ROM_NAME:"
#echo ""
#sleep 10
#clear
# Rom Build Commands
#cd $PATH_TO_ROMS/$ROM_NAME/$ANDROID_VERSION
#export TARGET_USE_GENERIC_WALLPAPER=true
#lunch lineage_$DEVICE_CODENAME-userdebug
#make carbon -j$(nproc --all)
# Final Zip Names
#ROM_ZIP_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 49
elif [[ $ROM_NAME == ExthmUi ]]
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
ROM_ZIP_NAME='exthm-11.0-*-NUCLEAR-SNAPSHOT-*.zip'        # build rom once & copy zip name it makes, * is a wildcard
ROM_MD5_NAME='exthm-11.0-*-NUCLEAR-SNAPSHOT-*.zip.md5sum' # Name of zip md5sum
############################

############################
else
echo ""
echo "Rom Not Integrated, Please Fix Or Add Support"
echo ""
############################
fi
############################
