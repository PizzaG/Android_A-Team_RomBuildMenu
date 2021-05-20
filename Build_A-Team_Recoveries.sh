#!/bin/bash

## Batik
#############################
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
cd $PATH_TO_RECOVERIES/Batik/9
make clean
#############################
#############################

