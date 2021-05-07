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
SOURCE=/media/pizzag/Android/BuildScripts/d2q
SOURCE2=/home/pizzag/Desktop

# Colors
green=`tput setaf 2`
red=`tput setaf 1`
yellow=`tput setaf 3`
reset=`tput sgr0`

#functions
autobuild() {
  # Run Auto Multi-Build Recoveries Script
  cd ${SOURCE}
  . AutoBuildRecoveries.sh 
}

recovery1() {
  # Batik
  cd /media/pizzag/Android/Recoveries/Batik/9
  . Build-d2q.sh  
  read
}

recovery2() {
  # Dark
  cd /media/pizzag/Android/Recoveries/Dark/8
  . Build-d2q.sh 
  read
}

recovery3() {
  # Nusantara
  cd /media/pizzag/Android/Recoveries/Nusantara/8
  . Build-d2q.sh   
  read
}

recovery4() {
  # OrangeFox
  cd /media/pizzag/Android/Recoveries/OrangeFox/10
  . Build-d2q.sh   
  read
}

recovery5() {
  # PitchBlack
  cd /media/pizzag/Android/Recoveries/PitchBlack/10
  . Build-d2q.sh   
  read
}

recovery6() {
  # RedWolf
  cd /media/pizzag/Android/Recoveries/RedWolf/8
  . Build-d2q.sh   
  read
}

recovery7() {
  # SkyHawk
  cd /media/pizzag/Android/Recoveries/SkyHawk/10
  . Build-d2q.sh   
  read
}

recovery8() {
  # TWRP
  cd /media/pizzag/Android/Recoveries/TWRP/10
  . Build-d2q.sh   
  read
}

upload() {
  # Upload To Android File Host
  proxychains lftp -e "mirror -R /media/pizzag/Android/Uploads/Recoveries /Recoveries; bye" ftp://PizzaG:NhymsgQoCrcl@uploads.androidfilehost.com:21
}

# ----------------------------------------------------------
menu=
until [ "$menu" = "0" ]; do
echo ""
echo "${red}=========================================================${reset}"
echo "${red}==${reset}${green}                Recovery Menu                        ${reset}${red}==${reset}"
echo "${red}=========================================================${reset}"
echo "${red}==${reset}${yellow}  01 - Build All Recoveries & Upload                 ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}                                                     ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   Build Individual Recoveries                       ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   1 - Batik                                         ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   2 - Dark                                          ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   3 - Nusantara                                     ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   4 - OrangeFox                                     ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   5 - PitchBlack                                    ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   6 - RedWolf                                       ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   7 - SkyHawk                                       ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   8 - TWRP                                          ${reset}${red}==${reset}"
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
  echo "${green}All Recoveries Built!!${reset}"
  echo ""
  echo "Press Enter To Begin Auto Upload"
  echo ""
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  echo ""
  read
  clear
  upload
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
  # Build Batik
  clear
  BEGIN=$(date +%s)
  recovery1
  END=$(date +%s)
  echo "${green}Batik Recovery Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

2 )
  # Build Dark
  clear
  BEGIN=$(date +%s)
  recovery2
  END=$(date +%s)
  echo "${green}Dark Recovery Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

3 )
  # Build Nusantara
  clear
  BEGIN=$(date +%s)
  recovery3
  END=$(date +%s)
  echo "${green}Nusantara Recovery Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

4 )
  # OrangeFox
  clear
  BEGIN=$(date +%s)
  recovery4
  END=$(date +%s)
  echo "${green}OrangeFox Recovery Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

5 )
  # Build PitchBlack
  clear
  BEGIN=$(date +%s)
  recovery5
  END=$(date +%s)
  echo "${green}PitchBlack Recovery Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

6 )
  # Build RedWolf
  clear
  BEGIN=$(date +%s)
  recovery6
  END=$(date +%s)
  echo "${green}RedWolf Recovery Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

7 )
  # Build SkyHawk
  clear
  BEGIN=$(date +%s)
  recovery7
  END=$(date +%s)
  echo "${green}SkyHawk Recovery Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

8 )
  # Build TWRP
  clear
  BEGIN=$(date +%s)
  recovery8
  END=$(date +%s)
  echo "${green}TWRP Recovery Built!!${reset}"
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
