#!/bin/bash

# Copyright (C) 2019-Present A-Team Digital Solutions
#
clear
                  
# Android Version Selector
######################################################
#
echo ""
echo "Choose Android Version To Build:"
echo ""
echo "1 For Android 9"
echo "2 For Android 10"
echo "3 For Android 11"
echo "4 For Android 12"
echo ""
echo "Select Your Option & PRESS ENTER"
read android
# Option 1
if [[ $android == 1 ]]
then
export ANDROID_VERSION=9
clear
echo ""
echo "Setting Android 9..."
echo ""
# Option 2
elif [[ $android == 2 ]]
then
export ANDROID_VERSION=10
clear
echo ""
echo "Setting Android 10..."
echo ""
# Option 3
elif [[ $android == 3 ]]
then
export ANDROID_VERSION=11
clear
echo ""
echo "Setting Android 11..."
echo ""
# Option 4
elif [[ $android == 4 ]]
then
export ANDROID_VERSION=12
clear
echo ""
echo "Setting Android 12..."
echo ""
fi
#
############################
