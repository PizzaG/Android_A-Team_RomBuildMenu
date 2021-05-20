#!/bin/bash

# Copyright (C) 2019-Present A-Team Digital Solutions

# Galaxy S10+ Auto Multi-Build Rom Script

# AutoBuild
#############################
## Rom 1
cd /media/pizzag/Android/Roms/AICP/$ANDROID_VERSION
gnome-terminal -e "bash -c '. /media/pizzag/Android/Roms/AICP/$ANDROID_VERSION/Build_A-Team.sh'" </dev/null >/dev/null 2>&1 &
clear
echo ""
echo "One Moment, I'm tired & Sleeping for 30 Minutes..."
echo ""
sleep 1800
#############################
## Rom 2
cd /media/pizzag/Android/Roms/AospEx/$ANDROID_VERSION
. Build_A-Team.sh
#############################
#
#############################
## Rom 3
#cd /media/pizzag/Android/Roms/AICP/$ANDROID_VERSION
#gnome-terminal -e "bash -c '. /media/pizzag/Android/Roms/AICP/$ANDROID_VERSION/Build_A-Team.sh'" </dev/null >/dev/null 2>&1 &
#clear
#echo ""
#echo "One Moment, I'm tired & Sleeping for 30 Minutes..."
#echo ""
#sleep 1800
#############################
## Rom 4
#cd /media/pizzag/Android/Roms/AospEx/$ANDROID_VERSION
#. Build_A-Team.sh
#############################
#############################
