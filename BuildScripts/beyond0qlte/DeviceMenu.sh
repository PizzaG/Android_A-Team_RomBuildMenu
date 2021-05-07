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
SOURCE=/media/pizzag/Android/BuildScripts/beyond0qlte
SOURCE2=/home/pizzag/Desktop
SOURCE3=/media/pizzag/Android/BuildScripts

# Colors
green=`tput setaf 2`
red=`tput setaf 1`
yellow=`tput setaf 3`
reset=`tput sgr0`

#functions
android11() {
  # Java & Python Selector
  echo ""
  echo "Java & Python Selector:"
  echo ""
  echo "1 To Run Selector"
  echo "2 To Skip Selector"
  echo ""
  echo "Select Your Option & PRESS ENTER"
  read selector
  if [[ $selector == 1 ]]
  then
  cd ${SOURCE2}
  echo ""
  echo "Running Java & Python Selector..."
  . ChangeJavaVersion.sh
  clear
  . ChangePythonVersion.sh    
  sleep 5
  elif [[ $selector == 2 ]]
  then
  echo ""
  echo "Skipping Java & Python Selector..."
  sleep 5
  fi
  # Android 11 Menu
  cd ${SOURCE}
  . RomMenu-11.sh  
  read
}

recovery() {
  # Java & Python Selector
  echo ""
  echo "Java & Python Selector:"
  echo ""
  echo "1 To Run Selector"
  echo "2 To Skip Selector"
  echo ""
  echo "Select Your Option & PRESS ENTER"
  read selector
  if [[ $selector == 1 ]]
  then
  cd ${SOURCE2}
  echo ""
  echo "Running Java & Python Selector..."
  . ChangeJavaVersion.sh
  clear
  . ChangePythonVersion.sh    
  sleep 5
  elif [[ $selector == 2 ]]
  then
  echo ""
  echo "Skipping Java & Python Selector..."
  sleep 5
  fi
  # Recovery Menu
  cd ${SOURCE}
  . RecoveryMenu.sh  
  read
}

# ----------------------------------------------------------
menu=
until [ "$menu" = "0" ]; do
echo ""
echo "${red}=========================================================${reset}"
echo "${red}==${reset}${green}             Galaxy S10e Build Menu                  ${reset}${red}==${reset}"
echo "${red}=========================================================${reset}"
echo "${red}==${reset}${yellow}   1 - Android 11 Rom Menu                           ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   2 - Recovery Menu                                 ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   0 - Return To Main Menu                           ${reset}${red}==${reset}"
echo "${red}=========================================================${reset}"
echo ""
echo -n "Enter selection: "
read menu
echo ""
case ${menu} in
1 )
  # Android 11 Build Menu
  clear
  BEGIN=$(date +%s)
  android11
  END=$(date +%s)
  clear
;;
#############################################################

2 )
  # Recovery Build Menu
  clear
  BEGIN=$(date +%s)
  recovery
  END=$(date +%s)
  clear
;;
#############################################################

0 ) 
  # Return To Main Menu
  cd ${SOURCE2}
  . MasterBuildMenu.sh
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
