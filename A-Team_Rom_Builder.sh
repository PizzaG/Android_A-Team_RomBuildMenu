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

# DYNAMIC Variable- Change To Match BuildScripts Folder Location
######################################################
#
SCRIPTS_DIRECTORY=/media/pizzag/Android/BuildScripts
#
############################


# STATIC Variables- Don't Change Unless You're a "G"
######################################################
#
# Set Variables Launch Name
VARIABLES=". Variables.sh"
#
# Load Variables 
cd $SCRIPTS_DIRECTORY
$VARIABLES
#
############################

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
echo "${cyan}=========================================================${reset}"
echo "${cyan}==${reset}${yellow}           A-Team Multi Device Build Menu            ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${yellow}       Lets get Ready To Build For The Masses!       ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${yellow}                                                     ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${yellow}                                                     ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${yellow}                 Menu Version: 0.11                  ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${yellow}                  Built By: PizzaG                   ${reset}${cyan}==${reset}"
echo "${cyan}=========================================================${reset}"
echo "${cyan}==${reset}${white}   1 - Galaxy S10e          -->   Beyond0qlte        ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}   2 - Galaxy S10           -->   Beyond1qlte        ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}   3 - Galaxy S10+          -->   Beyond2qlte        ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}   4 - Galaxy Note 10       -->   Dq1                ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}   5 - Galaxy Note 10+      -->   Dq2                ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}   6 - Xiaomi/Redmi 8a dual -->   Olivewood          ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}  01 - Build All Devices    -->   Gapps + No_Gapps   ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}  02 - Java & Python Selector                        ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}  03 - Upload Menu                                   ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}  04 - Download A-Team Vendor Add-On To Desktop      ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}                                                     ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${red}   0${reset} - Exit                                          ${reset}${cyan}==${reset}"
echo "${cyan}=========================================================${reset}"
echo ""
echo -n "Enter selection: "
read menu
echo ""
case ${menu} in
1 )
  # Device 1
  clear
  export DEVICE_CODENAME="$DEVICE_1"
  cd $SCRIPTS_DIRECTORY
  $DEVICE_MENU
  read
  clear
;;
#############################################################

2 )
  # Device 2
  clear
  export DEVICE_CODENAME="$DEVICE_2"
  cd $SCRIPTS_DIRECTORY
  $DEVICE_MENU
  read
  clear
;;
#############################################################

3 )
  # Device 3
  export DEVICE_CODENAME="$DEVICE_3"
  cd $SCRIPTS_DIRECTORY
  $DEVICE_MENU
  read
  clear
;;
#############################################################

4 )
  # Device 4
  export DEVICE_CODENAME="$DEVICE_4"
  cd $SCRIPTS_DIRECTORY
  $DEVICE_MENU
  read
  clear
;;
#############################################################

5 )
  # Device 5
  export DEVICE_CODENAME="$DEVICE_5"
  cd $SCRIPTS_DIRECTORY 
  $DEVICE_MENU
  read
  clear
;;
#############################################################

6 )
  # Device 6
  export DEVICE_CODENAME="$DEVICE_6"
  cd $SCRIPTS_DIRECTORY
  $DEVICE_MENU
  read
  clear
;;
#############################################################

01 )
  # Build Roms All Devices
  clear
  BEGIN=$(date +%s)
  # Build All Devices: No_Gapps + Upload
  #
  ## Beyond0qlte
  echo "Device 1- No_Gapps"
  sleep 5
  export DEVICE_CODENAME="$DEVICE_1"
  cd $SCRIPTS_DIRECTORY
  $AUTO_BUILD_ROMS
  ## Beyond1qlte
  export DEVICE_CODENAME="$DEVICE_2"
  cd $SCRIPTS_DIRECTORY
  $AUTO_BUILD_ROMS
  ## Beyond2qlte
  echo "Device 3- No_Gapps"
  sleep 5
  export DEVICE_CODENAME="$DEVICE_3"
  cd $SCRIPTS_DIRECTORY
  $AUTO_BUILD_ROMS
  ## D1Q
  export DEVICE_CODENAME="$DEVICE_4"
  cd $SCRIPTS_DIRECTORY
  $AUTO_BUILD_ROMS
  ## D2Q
  echo "Device 5- No_Gapps"
  sleep 5
  export DEVICE_CODENAME="$DEVICE_5"
  cd $SCRIPTS_DIRECTORY
  $AUTO_BUILD_ROMS
  ## Olivewood
  #echo "Device 6- No_Gapps"
  #sleep 5
  #export DEVICE_CODENAME="$DEVICE_6"
  #cd $SCRIPTS_DIRECTORY
  #$AUTO_BUILD_ROMS
  clear
  echo ""
  echo " Gapps Builds Finished, Starting No_Gapps Builds"
  echo ""
  clear
  # Build 6 Devices: Gapps + Upload
  #
  ## Beyond0qlte
  echo "Device 1- Gapps"
  sleep 5
  export DEVICE_CODENAME="$DEVICE_1"
  export HAS_GAPPS=true
  cd $SCRIPTS_DIRECTORY
  $AUTO_BUILD_ROMS
  ## Beyond1qlte
  export DEVICE_CODENAME="$DEVICE_2"
  export HAS_GAPPS=true
  cd $SCRIPTS_DIRECTORY
  $AUTO_BUILD_ROMS
  ## Beyond1q2te
  echo "Device 3- Gapps"
  sleep 5
  export DEVICE_CODENAME="$DEVICE_3"
  export HAS_GAPPS=true
  cd $SCRIPTS_DIRECTORY
  $AUTO_BUILD_ROMS
  ## D1Q
  export DEVICE_CODENAME="$DEVICE_4"
  export HAS_GAPPS=true
  cd $SCRIPTS_DIRECTORY
  $AUTO_BUILD_ROMS
  ## D2Q
  echo "Device 5- Gapps"
  sleep 5
  export DEVICE_CODENAME="$DEVICE_5"
  export HAS_GAPPS=true
  cd $SCRIPTS_DIRECTORY
  $AUTO_BUILD_ROMS
  ## Olivewood
  #echo "Device - Gapps"
  #sleep 5
  #export DEVICE_CODENAME="$DEVICE_6"
  #export HAS_GAPPS=true
  #cd $SCRIPTS_DIRECTORY
  #$AUTO_BUILD_ROMS
  clear
  proxychains lftp -e "mirror -R $UPLOADS_DIRECTORY/Roms_Android-11 /Roms_Android-11; bye" $AFH_LOGIN
  echo ""
  echo " Job Complete, PRESS ENTER TO CONTINUE"
  echo ""
  read
  END=$(date +%s)
  clear
;;
#############################################################

02 )
  # Java & Python Selector
  clear
  echo ""
  echo "Running Java & Python Selector..."
  # Java Selector
  echo " "
  echo " Java Selector"
  echo " "
  echo " ** Roms: Java 8 - Python 3.8 ** " 
  echo " ** Recoveries: Java 8 - Python 2.7 ** "
  echo " "
  echo " PRESS ENTER WHEN YOU HAVE DECIDED"
  echo " "
  read
  clear
  sudo update-alternatives --config java
  echo " "
  echo " PRESS ENTER TO EXIT"
  read
  clear
  # Python Selector
  echo " "
  echo " Python Selector"
  echo " "
  echo " ** Roms: Java 8 - Python 3.8 ** " 
  echo " ** Recoveries: Java 8 - Python 2.7 ** "
  echo " "
  echo " PRESS ENTER WHEN YOU HAVE DECIDED"
  echo " "
  read
  clear
  sudo update-alternatives --config python
  echo " "
  echo " PRESS ENTER TO EXIT"
  read 
  clear                             

;;
#############################################################

03 )
  # Upload Menu
  clear
  cd $SCRIPTS_DIRECTORY
  $UPLOAD_MENU  
  clear
;;
#############################################################

04 )
  # Download A-Team Vendor Add-On
  clear
  git clone https://github.com/PizzaG/android_vendor_A-Team.git $DESKTOP_DIRECTORY/A-Team
  sleep 7
  clear
;;
#############################################################

0 ) kill -INT $$ ;;
* ) clear
    echo "Wrong Choice AssFace, 1-8 or 0 to exit"
    sleep 1
    echo ""
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
