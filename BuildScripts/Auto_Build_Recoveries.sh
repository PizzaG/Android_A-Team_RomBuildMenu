#!/bin/bash

# Copyright (C) 2019-Present A-Team Digital Solutions
#
# Generic Device Auto Multi-Build Recovery Script
#

#############################
## Recovery 1
cd $PATH_TO_RECOVERIES/$RECOVERY_1/9
gnome-terminal -e "bash -c '. $PATH_TO_RECOVERIES/$RECOVERY_1/9/$RECOVERY_BUILD_SCRIPT'" </dev/null >/dev/null 2>&1 &  
#############################
## Recovery 2
cd $PATH_TO_RECOVERIES/$RECOVERY_2/8
gnome-terminal -e "bash -c '. $PATH_TO_RECOVERIES/$RECOVERY_2/8/$RECOVERY_BUILD_SCRIPT'" </dev/null >/dev/null 2>&1 &  
#############################
## Recovery 3
cd $PATH_TO_RECOVERIES/$RECOVERY_3/8
gnome-terminal -e "bash -c '. $PATH_TO_RECOVERIES/$RECOVERY_3/8/$RECOVERY_BUILD_SCRIPT'" </dev/null >/dev/null 2>&1 &  
#############################
## Recovery 4
cd $PATH_TO_RECOVERIES/$RECOVERY_4/10
gnome-terminal -e "bash -c '. $PATH_TO_RECOVERIES/$RECOVERY_4/10/$RECOVERY_BUILD_SCRIPT'" </dev/null >/dev/null 2>&1 &  
echo ""
echo "One Moment, I'm tired & Sleeping for 2 Minutes..."
echo ""
sleep 120
#############################
#############################


#############################
## Recovery 5
cd $PATH_TO_RECOVERIES/$RECOVERY_5/10
gnome-terminal -e "bash -c '. $PATH_TO_RECOVERIES/$RECOVERY_5/10/$RECOVERY_BUILD_SCRIPT'" </dev/null >/dev/null 2>&1 &  
#############################
## Recovery 6
cd $PATH_TO_RECOVERIES/$RECOVERY_6/8
gnome-terminal -e "bash -c '. $PATH_TO_RECOVERIES/$RECOVERY_6/8/$RECOVERY_BUILD_SCRIPT'" </dev/null >/dev/null 2>&1 &  
#############################
## Recovery 7
cd $PATH_TO_RECOVERIES/$RECOVERY_7/10
gnome-terminal -e "bash -c '. $PATH_TO_RECOVERIES/$RECOVERY_7/10/$RECOVERY_BUILD_SCRIPT'" </dev/null >/dev/null 2>&1 &  
#############################
## Recovery 8
echo ""
echo "One Left, Good Job!!..."
echo ""
sleep 20
clear
cd $PATH_TO_RECOVERIES/$RECOVERY_8/10
$RECOVERY_BUILD_SCRIPT
#############################
#############################
