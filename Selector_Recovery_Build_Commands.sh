#!/bin/bash

# Copyright (C) 2019-Present A-Team Digital Solutions
#
# Recovery Build Command Auto Selector
#
clear
                  
######################################################
# Quick Heads Up
echo ""
echo "AutoMagically Selecting Recovery Build Commands..."
echo ""
#echo "Select Your Option & PRESS ENTER"
#read android
############################

######################################################
# Rom 1
if [[ $RECOVERY_NAME == Batik ]]
then
# Output What Recovery Got Selected
echo ""
echo "Your Selected Recovery Appears To Be $RECOVERY_NAME:"
echo ""
echo "Setting Rrecovery Build Commands According To: $RECOVERY_NAME:"
echo ""
sleep 10
clear
# Recovery Build Commands
cd $PATH_TO_RECOVERIES/$RECOVERY_NAME/$ANDROID_VERSION
make clean
export USE_CCACHE=1
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
export BR_MAINTAINER=PizzaG
. build/envsetup.sh
lunch omni_$DEVICE_CODENAME-eng
mka recoveryimage -j$(nproc --all)
echo
echo " Recovery Should Be Built"
echo ""
mv $OUT/recovery.img $RECOVERY_UPLOADS_DIRECTORY/Batik_Recovery-$DEVICE_CODENAME.img
mv $OUT/BR-$DEVICE_CODENAME*.zip $RECOVERY_UPLOADS_DIRECTORY/Batik_Recovery-$DEVICE_CODENAME.zip
mv $OUT/recovery.tar $RECOVERY_UPLOADS_DIRECTORY/Batik_Recovery-$DEVICE_CODENAME.tar
cd $PATH_TO_RECOVERIES/$RECOVERY_NAME/$ANDROID_VERSION
make clean
#############################

######################################################
# Rom 2
if [[ $RECOVERY_NAME == Dark ]]
then
# Output What Recovery Got Selected
echo ""
echo "Your Selected Recovery Appears To Be $RECOVERY_NAME:"
echo ""
echo "Setting Rrecovery Build Commands According To: $RECOVERY_NAME:"
echo ""
sleep 10
clear
# Recovery Build Commands
cd $PATH_TO_RECOVERIES/$RECOVERY_NAME/$ANDROID_VERSION
make clean
export USE_CCACHE=1
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
. build/envsetup.sh
lunch omni_$DEVICE_CODENAME-eng
mka recoveryimage -j$(nproc --all)
echo
echo " Recovery Should Be Built"
echo ""
mv $OUT/recovery.img $RECOVERY_UPLOADS_DIRECTORY/Dark_Recovery-$DEVICE_CODENAME.img
mv $OUT/recovery.tar $RECOVERY_UPLOADS_DIRECTORY/Dark_Recovery-$DEVICE_CODENAME.tar
mv $OUT/DarkRecovery-$DEVICE_CODENAME*.zip $RECOVERY_UPLOADS_DIRECTORY/Dark_Recovery-$DEVICE_CODENAME.zip
cd $PATH_TO_RECOVERIES/$RECOVERY_NAME/$ANDROID_VERSION
make clean
#############################

######################################################
# Rom 3
if [[ $RECOVERY_NAME == Nusantara ]]
then
# Output What Recovery Got Selected
echo ""
echo "Your Selected Recovery Appears To Be $RECOVERY_NAME:"
echo ""
echo "Setting Rrecovery Build Commands According To: $RECOVERY_NAME:"
echo ""
sleep 10
clear
# Recovery Build Commands
cd $PATH_TO_RECOVERIES/$RECOVERY_NAME/$ANDROID_VERSION
# Final Zip Names
ROM_ZIP_NAME='Arrow*UNOFFICIAL*.zip'             # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='Arrow*UNOFFICIAL*.zip.md5sum'      # Name of zip md5sum
############################

######################################################
# Rom 4
if [[ $RECOVERY_NAME == OrangeFox ]]
then
# Output What Recovery Got Selected
echo ""
echo "Your Selected Recovery Appears To Be $RECOVERY_NAME:"
echo ""
echo "Setting Rrecovery Build Commands According To: $RECOVERY_NAME:"
echo ""
sleep 10
clear
# Recovery Build Commands
cd $PATH_TO_RECOVERIES/$RECOVERY_NAME/$ANDROID_VERSION
# Final Zip Names
ROM_ZIP_NAME='awaken_*Sapphire-UNOFFICIAL*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='awaken_*Sapphire-UNOFFICIAL*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 5
if [[ $RECOVERY_NAME == PitchBlack ]]
then
# Output What Recovery Got Selected
echo ""
echo "Your Selected Recovery Appears To Be $RECOVERY_NAME:"
echo ""
echo "Setting Rrecovery Build Commands According To: $RECOVERY_NAME:"
echo ""
sleep 10
clear
# Recovery Build Commands
cd $PATH_TO_RECOVERIES/$RECOVERY_NAME/$ANDROID_VERSION
# Final Zip Names
ROM_ZIP_NAME='baikalos_*-UNOFFICIAL-*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='baikalos_*-UNOFFICIAL-*.zip.md5sum' # Name of zip md5sum
############################

######################################################
# Rom 6
if [[ $RECOVERY_NAME == RedWolf ]]
then
# Output What Recovery Got Selected
echo ""
echo "Your Selected Recovery Appears To Be $RECOVERY_NAME:"
echo ""
echo "Setting Rrecovery Build Commands According To: $RECOVERY_NAME:"
echo ""
sleep 10
clear
# Recovery Build Commands
cd $PATH_TO_RECOVERIES/$RECOVERY_NAME/$ANDROID_VERSION
# Final Zip Names
ROM_ZIP_NAME='Bliss-v14.3-*-UNOFFICIAL-*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='Bliss-v14.3-*-UNOFFICIAL-*.md5'        # Name of zip md5sum or just md5
############################

######################################################
# Rom 7
if [[ $RECOVERY_NAME == SkyHawk ]]
then
# Output What Recovery Got Selected
echo ""
echo "Your Selected Recovery Appears To Be $RECOVERY_NAME:"
echo ""
echo "Setting Rrecovery Build Commands According To: $RECOVERY_NAME:"
echo ""
sleep 10
clear
# Recovery Build Commands
cd $PATH_TO_RECOVERIES/$RECOVERY_NAME/$ANDROID_VERSION
# Final Zip Names
ROM_ZIP_NAME='Candy-*-11.0-UNOFFICIAL*.zip'          # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='Candy-*-11.0-UNOFFICIAL*.md5'          # Name of zip md5sum
############################

######################################################
# Rom 8
if [[ $RECOVERY_NAME == TWRP ]]
then
# Output What Recovery Got Selected
echo ""
echo "Your Selected Recovery Appears To Be $RECOVERY_NAME:"
echo ""
echo "Setting Rrecovery Build Commands According To: $RECOVERY_NAME:"
echo ""
sleep 10
clear
# Recovery Build Commands
cd $PATH_TO_RECOVERIES/$RECOVERY_NAME/$ANDROID_VERSION
# Final Zip Names
ROM_ZIP_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip'        # build rom once & copy zip name it makes, * is a wildcard
#ROM_MD5_NAME='CARBON-CR-9.0-R-UNOFFICIAL-lineage*.zip.md5sum' # Name of zip md5sum
############################



############################
else
echo ""
echo "Recovery Not Integrated, Please Fix Or Add Support"
echo ""
############################
fi
############################
