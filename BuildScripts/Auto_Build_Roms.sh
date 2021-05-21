#!/bin/bash

# Copyright (C) 2019-Present A-Team Digital Solutions
#
# Device Generic Auto Multi-Build Rom Script

# AutoBuild
#############################
## Rom 1
cd $PATH_TO_ROMS/$R1/$ANDROID_VERSION
gnome-terminal -e "bash -c '. $PATH_TO_ROMS/$R1/$ANDROID_VERSION/$ROM_BUILD_SCRIPT'" </dev/null >/dev/null 2>&1 &
clear
echo ""
echo "One Moment, I'm tired & Sleeping for 30 Minutes..."
echo ""
sleep 1800
#############################
## Rom 2
cd $PATH_TO_ROMS/$R2/$ANDROID_VERSION
$ROM_BUILD_SCRIPT
#############################
#
#############################
## Rom 3
#cd $PATH_TO_ROMS/$R3/$ANDROID_VERSION
#gnome-terminal -e "bash -c '. $PATH_TO_ROMS/$R3/$ANDROID_VERSION/$ROM_BUILD_SCRIPT'" </dev/null >/dev/null 2>&1 &
#clear
#echo ""
#echo "One Moment, I'm tired & Sleeping for 30 Minutes..."
#echo ""
#sleep 1800
#############################
## Rom 4
#cd $PATH_TO_ROMS/$R4/$ANDROID_VERSION
#$ROM_BUILD_SCRIPT
#############################
#############################
