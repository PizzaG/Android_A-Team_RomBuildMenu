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

export ftp_proxy="http://192.168.49.1:8000"
clear

# Variables
## Device 1
SOURCE1=/media/pizzag/Android/BuildScripts/beyond0qlte
## Device 2
SOURCE2=/media/pizzag/Android/BuildScripts/beyond1qlte
## Device 3
SOURCE3=/media/pizzag/Android/BuildScripts/beyond2qlte
## Device 4
SOURCE4=/media/pizzag/Android/BuildScripts/d1q
## Device 5
SOURCE5=/media/pizzag/Android/BuildScripts/d2q
## Upload Menu
SOURCE7=/media/pizzag/Android/BuildScripts
## Uploads
UPLOAD=/media/pizzag/Android/Uploads

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


#functions
device1() {
  # Galaxy S10e
  cd ${SOURCE1}
  . DeviceMenu.sh  
  read
}

device2() {
  # Galaxy S10
  cd ${SOURCE2}
  . DeviceMenu.sh  
  read
}

device3() {
  # Galaxy S10+
  cd ${SOURCE3}
  . DeviceMenu.sh  
  read
}

device4() {
  # Galaxy Note 10
  cd ${SOURCE4}
  . DeviceMenu.sh  
  read
}

device5() {
  # Galaxy Note 10+
  cd ${SOURCE5}
  . DeviceMenu.sh  
  read
}

alldevices() {
## Build 5 Galaxy Devices: No_Gapps + Upload
  # Beyond0qlte
  echo "Device 1- No_Gapps"
  sleep 10
  cd ${SOURCE1}
  . AutoBuildRoms-11.sh
  # Beyond1qlte
  cd ${SOURCE2}
  . AutoBuildRoms-11.sh
  # Beyond2qlte
  echo "Device 3- No_Gapps"
  sleep 10
  cd ${SOURCE3}
  . AutoBuildRoms-11.sh
  # D1Q
  cd ${SOURCE4}
  . AutoBuildRoms-11.sh
  # D2Q
  echo "Device 5- No_Gapps"
  sleep 10
  cd ${SOURCE5}
  . AutoBuildRoms-11.sh
  clear
  echo ""
  echo " Gapps Builds Finished, Starting No_Gapps Builds"
  echo ""
  clear
  ## Build 5 Galaxy Devices: Gapps + Upload
  # Beyond0qlte
  echo "Device 1- Gapps"
  sleep 10
  cd ${SOURCE1}
  . AutoBuildRomsGapps.sh
  # Beyond1qlte
  cd ${SOURCE2}
  . AutoBuildRomsGapps.sh
  # Beyond1q2te
  echo "Device 3- Gapps"
  sleep 10
  cd ${SOURCE3}
  . AutoBuildRomsGapps.sh
  # D1Q
  cd ${SOURCE4}
  . AutoBuildRomsGapps.sh
  # D2Q
  echo "Device 5- Gapps"
  sleep 10
  cd ${SOURCE5}
  . AutoBuildRomsGapps.sh
  clear
  upload2
  echo ""
  echo " Job Complete, PRESS ENTER TO CONTINUE"
  echo ""
  read
}

upload() {
  # Run Master Builder Script
  cd ${SOURCE7}
  . UploadMenu.sh  
}

upload2() {
  # Upload To Android File Host
  proxychains lftp -e "mirror -R /media/pizzag/Android/Uploads/Roms_Android-11 /Roms_Android-11; bye" ftp://PizzaG:NhymsgQoCrcl@uploads.androidfilehost.com:21
}

# ----------------------------------------------------------
menu=
until [ "$menu" = "0" ]; do
echo ""
echo "${cyan}=========================================================${reset}"
echo "${cyan}==${reset}${yellow}           A-Team Multi Device Master Menu           ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${yellow}       Lets get Ready To Build For The Masses!       ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${yellow}                                                     ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${yellow}           ** Roms- Java 8 - Python 3.8 **           ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${yellow}        ** Recoveries- Java 8 - Python 2.7 **        ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${yellow}                                                     ${reset}${cyan}==${reset}"
echo "${cyan}=========================================================${reset}"
echo "${cyan}==${reset}${white}   1 - Galaxy S10e        -->    Beyond0qlte         ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}   2 - Galaxy S10         -->    Beyond1qlte         ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}   3 - Galaxy S10+        -->    Beyond2qlte         ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}   4 - Galaxy Note 10     -->    Dq1                 ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}   5 - Galaxy Note 10+    -->    Dq2                 ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}                                                     ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}   6 - Build 5 Galaxy Devices --> Gapps + No_Gapps   ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}                                                     ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}   7 - Device Upload Menu                            ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${white}                                                     ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${red}   0 - Exit                                          ${reset}${cyan}==${reset}"
echo "${cyan}=========================================================${reset}"
echo ""
echo -n "Enter selection: "
read menu
echo ""
case ${menu} in
1 )
  # Galaxy S10e
  clear
  BEGIN=$(date +%s)
  device1
  END=$(date +%s)
  clear
;;
#############################################################

2 )
  # Galaxy S10
  clear
  BEGIN=$(date +%s)
  device2
  END=$(date +%s)
  clear
;;
#############################################################

3 )
  # Galaxy S10+
  clear
  BEGIN=$(date +%s)
  device3
  END=$(date +%s)
  clear
;;
#############################################################

4 )
  # Galaxy Note 10
  clear
  BEGIN=$(date +%s)
  device4
  END=$(date +%s)
  clear
;;
#############################################################

5 )
  # Galaxy Note 10+
  clear
  BEGIN=$(date +%s)
  device5
  END=$(date +%s)
  clear
;;
#############################################################

6 )
  # Build Roms All Devices
  clear
  BEGIN=$(date +%s)
  alldevices
  END=$(date +%s)
  clear
;;
#############################################################

7 )
  # Upload Menu
  clear
  BEGIN=$(date +%s)
  upload
  END=$(date +%s)
  clear
;;
#############################################################

#0 ) clear ;;
0 ) kill -INT $$ ;;
#0 ) exit ;;
* ) clear
    echo "Wrong Choice AssFace, 1-7 or 0 to exit"
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
