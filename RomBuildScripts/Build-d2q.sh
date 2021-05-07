#!/bin/bash

export $A-TEAM_PATH="vendor/A-Team"

## AICP
#############################
. build/envsetup.sh
echo " Cleaning Up...."
m clean
sleep 5
clear
ccache -M 200G
export USE_CCACHE=1
export LC_ALL=C
export WITHOUT_CHECK_API=true
#lunch aosip_beyond0qlte-userdebug
#time m kronic
brunch d2q
echo
echo " Rom Should Be Built"
echo ""
# Gapps Finished File Output
if [[ $HAS_GAPPS = true ]]
then  
cd $OUT
zip -ur aicp_d2q_r-16.1-UNOFFICIAL*.zip $(A-TEAM_PATH)/FinalZip/Roms/AICP/META-INF $(A-TEAM_PATH)/FinalZip/AddOns                            
mv $OUT/aicp_d2q_r-16.1-UNOFFICIAL*.zip /media/pizzag/Android/Uploads/Roms_Android-11/Gapps
mv $OUT/aicp_d2q_r-16.1-UNOFFICIAL*.md5sum /media/pizzag/Android/Uploads/Roms_Android-11/Gapps
else 
# No_Gapps Finished File Output  
cd $OUT
zip -ur aicp_d2q_r-16.1-UNOFFICIAL*.zip $(A-TEAM_PATH)/FinalZip/Roms/AICP/META-INF $(A-TEAM_PATH)/FinalZip/AddOns
mv $OUT/aicp_d2q_r-16.1-UNOFFICIAL*.zip /media/pizzag/Android/Uploads/Roms_Android-11/No_Gapps
mv $OUT/aicp_d2q_r-16.1-UNOFFICIAL*.md5sum /media/pizzag/Android/Uploads/Roms_Android-11/No_Gapps
fi
cd /media/pizzag/Android/Roms/AICP/11
. build/envsetup.sh
echo " Cleaning Up...."
m clean
#############################
#############################
