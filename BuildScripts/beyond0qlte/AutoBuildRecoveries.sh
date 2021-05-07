#!/bin/bash

# Copyright 2019-Present:  A-Team Digital Solutions
## Galaxy S10e Auto Multi-Build Recovery Script

#############################
## Recovery 1
cd /media/pizzag/Android/Recoveries/Batik/9
gnome-terminal -e "bash -c '. /media/pizzag/Android/Recoveries/Batik/9/Build-beyond0qlte.sh'" </dev/null >/dev/null 2>&1 &  
#############################
## Recovery 2
cd /media/pizzag/Android/Recoveries/Dark/8
gnome-terminal -e "bash -c '. /media/pizzag/Android/Recoveries/Dark/8/Build-beyond0qlte.sh'" </dev/null >/dev/null 2>&1 &  
#############################
## Recovery 3
cd /media/pizzag/Android/Recoveries/Nusantara/8
gnome-terminal -e "bash -c '. /media/pizzag/Android/Recoveries/Nusantara/8/Build-beyond0qlte.sh'" </dev/null >/dev/null 2>&1 &  
#############################
## Recovery 4
cd /media/pizzag/Android/Recoveries/OrangeFox/10
gnome-terminal -e "bash -c '. /media/pizzag/Android/Recoveries/OrangeFox/10/Build-beyond0qlte.sh'" </dev/null >/dev/null 2>&1 &  
echo ""
echo "One Moment, I'm tired & Sleeping for 2 Minutes..."
echo ""
sleep 120
#############################
#############################


#############################
## Recovery 5
cd /media/pizzag/Android/Recoveries/PitchBlack/10
gnome-terminal -e "bash -c '. /media/pizzag/Android/Recoveries/PitchBlack/10/Build-beyond0qlte.sh'" </dev/null >/dev/null 2>&1 &  
#############################
## Recovery 6
cd /media/pizzag/Android/Recoveries/RedWolf/8
gnome-terminal -e "bash -c '. /media/pizzag/Android/Recoveries/RedWolf/8/Build-beyond0qlte.sh'" </dev/null >/dev/null 2>&1 &  
#############################
## Recovery 7
cd /media/pizzag/Android/Recoveries/SkyHawk/10
gnome-terminal -e "bash -c '. /media/pizzag/Android/Recoveries/SkyHawk/10/Build-beyond0qlte.sh'" </dev/null >/dev/null 2>&1 &  
#############################
## Recovery 8
echo ""
echo "One Left, Good Job!!..."
echo ""
sleep 20
clear
cd /media/pizzag/Android/Recoveries/TWRP/10
. Build-beyond0qlte.sh
#############################
#############################
