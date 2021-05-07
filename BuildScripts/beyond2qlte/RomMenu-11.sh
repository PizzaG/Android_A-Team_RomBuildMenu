#!/bin/bash
#
# Copyright (C) 2016 BeansTown106 for PureNexus Project
# Copyright (C) 2019-Present A-Team Digital Solutions
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#

clear

# Variables
SOURCE=/media/pizzag/Android/BuildScripts/beyond2qlte
SOURCE2=/home/pizzag/Desktop
SOURCE3=/media/pizzag/Android/BuildScripts

# Colors
green=`tput setaf 2`
red=`tput setaf 1`
yellow=`tput setaf 3`
reset=`tput sgr0`

#functions
autobuild() {
  # Run Auto Multi-Build Rom Script
  cd ${SOURCE}
  ## Gapps Selector
  echo ""
  echo "Choose GAPPS Type:"
  echo ""
  echo "1 For Gapps"
  echo "2 For No Gapps"
  #echo "2 For Micro Gapps"
  echo ""
  echo "Select Your Option & PRESS ENTER"
  read gapps
  if [[ $gapps == 1 ]]
  then
  . AutoBuildRomsGapps.sh    
  clear
  echo ""
  echo "Including Gapps..."
  echo ""
  elif [[ $gapps == 2 ]]
  then
  . AutoBuildRoms-11.sh  
  clear
  echo ""
  echo "Not Including Gapps..."
  echo ""
  #elif [[ $gapps == 2 ]]
  #then
  #export GAPPS_TYPE=microg
  fi
}

rom1() {
  # AICP
  cd ${SOURCE3}
  . Gapps-11.sh
  cd /media/pizzag/Android/Roms/AICP/11
  . Build-beyond2qlte.sh  
  read
}

rom2() {
  # AospEx
  cd ${SOURCE3}
  . Gapps-11.sh
  cd /media/pizzag/Android/Roms/AospEx/11
  . Build-beyond2qlte.sh 
  read
}

rom3() {
  # AncientOS
  cd ${SOURCE3}
  . Gapps-11.sh
  cd /media/pizzag/Android/Roms/AncientOS/11
  . Build-beyond2qlte.sh 
  read
}

rom4() {
  # AOSIP
  cd ${SOURCE3}
  . Gapps-11.sh
  cd /media/pizzag/Android/Roms/AOSIP/11
  . Build-beyond2qlte.sh 
  read
}

upload() {
  # Upload To Android File Host
  proxychains lftp -e "mirror -R /media/pizzag/Android/Uploads/Roms_Android-11 /Roms_Android-11; bye" ftp://PizzaG:NhymsgQoCrcl@uploads.androidfilehost.com:21
}

# ----------------------------------------------------------
menu=
until [ "$menu" = "0" ]; do
echo ""
echo "${red}=========================================================${reset}"
echo "${red}==${reset}${green}                Android 11 Build Menu                ${reset}${red}==${reset}"
echo "${red}=========================================================${reset}"
echo "${red}==${reset}${yellow}  01 - Build All Roms & Upload                       ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}                                                     ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   Build Individual Roms                             ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   1 - AICP                                          ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   2 - AospEx                                        ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   3 - AncientOS                                     ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   4 - AOSIP                                         ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}                                                     ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   0 - Return to Galaxy Note 10+ Build Menu          ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}  00 - Return to Main Menu                           ${reset}${red}==${reset}"
echo "${red}=========================================================${reset}"
echo ""
echo -n "Enter selection: "
read menu
echo ""
case ${menu} in
01 )
  # Build All Roms & Upload
  clear
  BEGIN=$(date +%s)
  autobuild
  END=$(date +%s)
  echo "${green}All Android 11 Roms Built!!${reset}"
  echo ""
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  echo ""
  echo "Press Enter To Begin Auto Upload"
  read
  clear
  upload
  echo ""
  echo "${green}Auto Upload Complete!!${reset}"
  echo ""
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  echo ""
  read
  clear
;;
#############################################################

1 )
  # Build AICP
  clear
  BEGIN=$(date +%s)
  rom1
  END=$(date +%s)
  echo "${green}AICP Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

2 )
  # Build AospEx
  clear
  BEGIN=$(date +%s)
  rom2
  END=$(date +%s)
  echo "${green}AospEx Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

3 )
  # Build AncientOS
  clear
  BEGIN=$(date +%s)
  rom3
  END=$(date +%s)
  echo "${green}AncientOS Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

4 )
  # Build AOSIP
  clear
  BEGIN=$(date +%s)
  rom4
  END=$(date +%s)
  echo "${green}AOSIP Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

0 ) 
  # Return To Build Menu
  cd ${SOURCE}
  . DeviceMenu.sh
;; 
00 ) 
  # Return To Main Menu
  cd ${SOURCE2}
  . MasterBuildMenu.sh
;; 
* ) clear
    echo "Wrong Choice AssFace, 1-15, 0 to Return to Build Menu or 00 to Return to Main Menu"
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
