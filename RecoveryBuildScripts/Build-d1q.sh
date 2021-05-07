#!/bin/bash

## TWRP
#############################
make clean
ccache -M 50G
export USE_CCACHE=1
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
#export BR_MAINTAINER=PizzaG
. build/envsetup.sh
lunch omni_d1q-eng
mka recoveryimage
echo
echo " Recovery Should Be Built"
echo ""
mv $OUT/recovery.img /media/pizzag/Android/Uploads/Recoveries/TWRP_Recovery-d1q.img
mv $OUT/recovery.tar /media/pizzag/Android/Uploads/Recoveries/TWRP_Recovery-d1q.tar
cd /media/pizzag/Android/Recoveries/TWRP/10
make clean
#############################
#############################

