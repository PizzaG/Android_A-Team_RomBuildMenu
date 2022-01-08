#!/bin/bash

# Copyright (C) 2019-Present A-Team Digital Solutions
#
# Generic Device Recovery Build Menu
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
echo "${red}===================================${reset}"
echo "          Recovery Menu "
echo ""
echo "  Device Selected: "
echo "  $DEVICE_CODENAME "
echo ""
echo "${red}===================================${reset}"
echo " 01 - Build All Recoveries & Upload "
echo ""
echo " Build Individual Recoveries "
echo " 1 - $RECOVERY_1 "
echo " 2 - $RECOVERY_2 "
echo " 3 - $RECOVERY_3 "
echo " 4 - $RECOVERY_4 "
echo " 5 - $RECOVERY_5 "
echo " 6 - $RECOVERY_6 "
echo " 7 - $RECOVERY_7 "
echo " 8 - $RECOVERY_8 "
echo ""
echo " 0${reset} - Build Menu "
echo " 00${reset} - Main Menu "
echo "${red}===================================${reset}"
echo ""
echo -n "Enter selection: "
read menu
echo ""
case ${menu} in
01 )
  # Build All Recoveries & Upload
  clear
  BEGIN=$(date +%s)
  # Run Auto Multi-Build Recoveries Script
  cd $SCRIPTS_DIRECTORY
  $AUTO_BUILD_RECOVERIES 
  END=$(date +%s)
  echo "${green}All Recoveries Built!!${reset}"
  echo ""
  echo "Press Enter To Begin Auto Upload"
  echo ""
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  echo ""
  read
  clear
  # Upload To Android File Host
  lftp -e "mirror -R $UPLOADS_DIRECTORY/Recoveries /Recoveries; bye" $AFH_LOGIN
  echo ""
  echo "${green}Auto Upload Complete!!${reset}"
  echo ""
  echo "All Done, Press Enter To Continue"
  echo ""
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  echo ""
  read
  clear
;;
#############################################################

1 )
  # Build Recovery 1
  clear
  BEGIN=$(date +%s)
  RECOVERY_NAME=$RECOVERY_1
  cd $PATH_TO_RECOVERIES/$RECOVERY_1/9
  $RECOVERY_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}Batik Recovery Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

2 )
  # Build Recovery 2
  clear
  BEGIN=$(date +%s)
  RECOVERY_NAME=$RECOVERY_2
  cd $PATH_TO_RECOVERIES/$RECOVERY_2/8
  $RECOVERY_BUILD_SCRIPT 
  read
  END=$(date +%s)
  echo "${green}Dark Recovery Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

3 )
  # Build Recovery 3
  clear
  BEGIN=$(date +%s)
  RECOVERY_NAME=$RECOVERY_3
  cd $PATH_TO_RECOVERIES/$RECOVERY_3/8
  $RECOVERY_BUILD_SCRIPT   
  read
  END=$(date +%s)
  echo "${green}Nusantara Recovery Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

4 )
  # Build Recovery 4
  clear
  BEGIN=$(date +%s)
  RECOVERY_NAME=$RECOVERY_4
  cd $PATH_TO_RECOVERIES/$RECOVERY_4/$ANDROID_VERSION
  $RECOVERY_BUILD_SCRIPT   
  read
  END=$(date +%s)
  echo "${green}OrangeFox Recovery Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

5 )
  # Build Recovery 5
  clear
  BEGIN=$(date +%s)
  RECOVERY_NAME=$RECOVERY_5
  cd $PATH_TO_RECOVERIES/$RECOVERY_5/$ANDROID_VERSION
  $RECOVERY_BUILD_SCRIPT   
  read
  END=$(date +%s)
  echo "${green}PitchBlack Recovery Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

6 )
  # Build Recovery 6
  clear
  BEGIN=$(date +%s)
  RECOVERY_NAME=$RECOVERY_6
  cd $PATH_TO_RECOVERIES/$RECOVERY_6/8
  $RECOVERY_BUILD_SCRIPT   
  read
  END=$(date +%s)
  echo "${green}RedWolf Recovery Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

7 )
  # Build Recovery 7
  clear
  BEGIN=$(date +%s)
  RECOVERY_NAME=$RECOVERY_7
  cd $PATH_TO_RECOVERIES/$RECOVERY_7/$ANDROID_VERSION
  $RECOVERY_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}SkyHawk Recovery Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

8 )
  # Build Recovery 8
  clear
  BEGIN=$(date +%s)
  RECOVERY_NAME=$RECOVERY_8
  cd $PATH_TO_RECOVERIES/$RECOVERY_8/$ANDROID_VERSION
  $RECOVERY_BUILD_SCRIPT   
  read
  END=$(date +%s)
  echo "${green}$RECOVERY_8 Recovery Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

0 ) 
  # Return To Build Menu
  cd $SCRIPTS_DIRECTORY
  $DEVICE_MENU
;; 
00 ) 
  # Return To Main Menu
  cd $DESKTOP_DIRECTORY
  $MAIN_MENU
;; 
* ) clear
    echo "Wrong Choice AssFace, 1-8, 0 to Return to Build Menu or 00 to Return to Main Menu"
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
