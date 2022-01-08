#!/bin/bash
#
# Copyright (C) 2019-Present A-Team Digital Solutions
#
# A-Team Rom Downloader Menu
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
echo "${cyan}=========================================================${reset}"
echo "${cyan}==${reset}${yellow}         A-Team Android 11 Rom Download Menu         ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${yellow}       Lets get Ready To Build For The Masses!       ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${yellow}                                                     ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${yellow}                 Built By: PizzaG                    ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${yellow}             Downloader Version: 0.02                ${reset}${cyan}==${reset}"
echo "${cyan}==${reset}${yellow}             Revision Date: 5-30-2021                ${reset}${cyan}==${reset}"
echo "${cyan}=========================================================${reset}"
echo " 1 - $ROM_1     26 - $ROM_26 "
echo " 2 - $ROM_2     27 - $ROM_27 "
echo " 3 - $ROM_3     28 - $ROM_28 "
echo " 4 - $ROM_4     29 - $ROM_29 "
echo " 5 - $ROM_5     30 - $ROM_30 "
echo " 6 - $ROM_6     31 - $ROM_31 "
echo " 7 - $ROM_7     32 - $ROM_32 "
echo " 8 - $ROM_8     33 - $ROM_33 "
echo " 9 - $ROM_9     34 - $ROM_34 "
echo "10 - $ROM_10    35 - $ROM_35 "
echo "11 - $ROM_11    36 - $ROM_36 "
echo "12 - $ROM_12    37 - $ROM_37 "
echo "13 - $ROM_13    38 - $ROM_38 "
echo "14 - $ROM_14    39 - $ROM_39 "
echo "15 - $ROM_15    40 - $ROM_40 "
echo "16 - $ROM_16    41 - $ROM_41 "
echo "17 - $ROM_17    42 - $ROM_42 "
echo "18 - $ROM_18    43 - $ROM_43 "
echo "19 - $ROM_19    44 - $ROM_44 "
echo "20 - $ROM_20    45 - $ROM_45 "
echo "21 - $ROM_21    46 - $ROM_46 "
echo "22 - $ROM_22    47 - $ROM_47 "
echo "23 - $ROM_23    48 - $ROM_48 "
echo "24 - $ROM_24    49 - $ROM_49 "
echo "25 - $ROM_25    50 - $ROM_50 "
echo " "
echo "${cyan}==${reset}${red}   0 - Exit                                          ${reset}${cyan}==${reset}"
echo "${cyan}=========================================================${reset}"
echo ""
echo -n "Enter selection: "
read menu
echo ""
case ${menu} in
1 )
  # Rom 1
  clear
  BEGIN=$(date +%s)
  mkdir -p AICP/11
  repo init --depth=1 -u http://github.com/AICP/platform_manifest.git -b r11.1
  repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
  END=$(date +%s)
  clear
;;
#############################################################

2 )
  # Rom 2
  clear
  BEGIN=$(date +%s)
  mkdir -p AosIp/11
  repo init --depth=1 -u http://github.com/AOSiP/platform_manifest.git -b eleven
  repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
  END=$(date +%s)
  clear
;;
#############################################################

3 )
  # Rom 3
  clear
  BEGIN=$(date +%s)
  mkdir -p AOSAP/11
  repo init --depth=1 -u http://github.com/aosap/platform_manifest.git -b eleven
  repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
  END=$(date +%s)
  clear
;;
#############################################################

4 )
  # Rom 4
  clear
  BEGIN=$(date +%s)
  rom4
  END=$(date +%s)
  clear
;;
#############################################################

5 )
  # Rom 5
  clear
  BEGIN=$(date +%s)
  rom5
  END=$(date +%s)
  clear
;;
#############################################################

6 )
  # AOSPK
  clear
  BEGIN=$(date +%s)
  mkdir -p AOSPK/11
  repo init --depth=1 -u http://github.com/AOSPK/manifest -b eleven
  repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
  END=$(date +%s)
  clear
;;
#############################################################

7 )
  # FillMeIn
  clear
  BEGIN=$(date +%s)
  rom7
  END=$(date +%s)
  clear
;;
#############################################################

0 ) clear ;;
#0 ) kill -INT $$ ;;
0 ) exit ;;
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
