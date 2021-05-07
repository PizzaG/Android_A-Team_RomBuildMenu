#!/bin/bash

# Copyright 2019-Present:  A-Team Digital Solutions
## Galaxy S10e Auto Multi-Build Rom Script

#############################
## Rom 1
cd /media/pizzag/Android/Roms/AICP/11
export HAS_GAPPS=true
gnome-terminal -e "bash -c '. /media/pizzag/Android/Roms/AICP/11/Build-beyond0qlte.sh'" </dev/null >/dev/null 2>&1 &
clear
echo ""
echo "One Moment, I'm tired & Sleeping for 30 Minutes..."
echo ""
sleep 1800
#############################
## Rom 2
export HAS_GAPPS=true
cd /media/pizzag/Android/Roms/AospEx/11
. Build-beyond0qlte.sh
#############################
#############################


#############################
## Rom 3
#cd /media/pizzag/Android/Roms/AncientOS/9
#export HAS_GAPPS=true
#gnome-terminal -e "bash -c '. /media/pizzag/Android/Roms/404/11/Build-beyond0qlte.sh'" </dev/null >/dev/null 2>&1 &
#clear
#echo ""
#echo "One Moment, I'm tired & Sleeping for 30 Minutes..."
#echo ""
#sleep 1800
#############################
## Rom 4
#cd /media/pizzag/Android/Roms/AOSIP/9
#export HAS_GAPPS=true
#. Build-beyond0qlte.sh
#############################
#############################




## Unused Commands for Local Building 
##   #gnome-terminal -e "bash -c '. ~/PizzaG/Android/Roms/SlimRom/7.1/Build-douglas.sh'" 
