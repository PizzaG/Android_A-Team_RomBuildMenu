#!/bin/bash

# Copyright (C) 2019-Present A-Team Digital Solutions
#
# Generic Device Menu
#
clear

# Colors
black=`tput setaf 0`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
magenta=`tput setaf 5`
cyan=`tput setaf 6`
white=`tput setaf 7`
reset=`tput sgr0`

# ----------------------------------------------------------
menu=
until [ "$menu" = "0" ]; do
echo ""
echo "${red}=================================${reset}"
echo "         Build Menu "
echo ""
echo "Device Selected:"
echo "$DEVICE_CODENAME "
echo ""
echo "${red}=================================${reset}"
echo " 1 - Rom Menu "
echo " 2 - Recovery Menu "
echo ""
echo "${red} 0 ${reset}- Return To Main Menu "
echo "${red}=================================${reset}"
echo ""
echo -n "Enter selection: "
read menu
echo ""
case ${menu} in
1 )
  # Android 11 Build Menu
  #
  # Android Rom Menu
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_ANDROID
  $ROM_MENU_11
  read
  clear
;;
#############################################################

2 )
  # Recovery Build Menu
  clear
  cd $SCRIPTS_DIRECTORY
  $RECOVERY_MENU
  read
  clear
;;
#############################################################

0 ) 
  # Return To Main Menu
  cd $DESKTOP_DIRECTORY
  $MAIN_MENU
;; 
* ) clear
    echo "Wrong Choice AssFace, 1-2 or 0 to Return to Main Menu"
    sleep 1
    echo " "
    echo "4"
    sleep 1
    echo "3"
    sleep 1
    echo "2"
    sleep 1
    echo "1"
    sleep 1
    clear
    esac
done
#############################################################
