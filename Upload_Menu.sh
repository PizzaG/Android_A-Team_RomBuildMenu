#!/bin/bash

# Copyright (C) 2019-Present A-Team Digital Solutions
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
echo "${red}==========================================${reset}"
echo "${red}==${reset}${green}           Upload Menu                ${reset}${red}==${reset}"
echo "${red}==========================================${reset}"
echo "${red}==${reset}${yellow}   1 - Upload Android 9 Roms          ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   2 - Upload Android 10 Roms         ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   3 - Upload Android 11 Roms         ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   4 - Upload Android 12 Roms         ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}                                      ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   9 - Upload Recoveries              ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}  10 - Upload ToolKits                ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}  11 - Upload BootLogos               ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}  12 - Custom Stock Rom               ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}  13 - Custom GSI Rom                 ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}                                      ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow} *Deletes Files In Upload Folders*    ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}  14 - Delete Android 9 Roms          ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}  15 - Delete Android 10 Roms         ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}  16 - Delete Android 11 Roms         ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}  17 - Delete Android 12 Roms         ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}  18 - Delete Recoveries              ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}  19 - Delete ToolKits                ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}  20 - Delete BootLogos               ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}                                      ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   0 - Return to Main Menu            ${reset}${red}==${reset}"
echo "${red}==========================================${reset}"
echo ""
echo -n "Enter selection: "
read menu
echo ""
case ${menu} in
1 )
  # Upload Android 9 Roms + Gapps
  clear
  BEGIN=$(date +%s)
  lftp -e "mirror -R $UPLOADS_DIRECTORY/Roms/9 /Roms-Android_9; bye" $AFH_LOGIN
  echo ""
  echo "ENTER TO CONTINUE"
  read
  END=$(date +%s)
  echo "${green}Android 9 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

2 )
  # Upload Android 10 Roms + Gapps
  clear
  BEGIN=$(date +%s)
  lftp -e "mirror -R $UPLOADS_DIRECTORY/Roms/10 /Roms-Android_10; bye" $AFH_LOGIN
  echo ""
  echo "ENTER TO CONTINUE"
  read
  END=$(date +%s)
  echo "${green}Android 10 Roms Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

3 )
  # Upload Android 11 Roms + Gapps
  clear
  BEGIN=$(date +%s)
  lftp -e "mirror -R $UPLOADS_DIRECTORY/Roms/11 /Roms-Android_11; bye" $AFH_LOGIN
  echo ""
  echo "ENTER TO CONTINUE"
  read
  END=$(date +%s)
  echo "${green}Android 11 Roms With Gapps Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

4 )
  # Upload Android 12 Roms + Gapps
  clear
  BEGIN=$(date +%s)
  lftp -e "mirror -R $UPLOADS_DIRECTORY/Roms/12 /Roms-Android_12; bye" $AFH_LOGIN
  echo ""
  echo "ENTER TO CONTINUE"
  read
  END=$(date +%s)
  echo "${green}Android 12 Roms With Gapps Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

5 )
  # Upload Recoveries
  clear
  BEGIN=$(date +%s)
  lftp -e "mirror -R $UPLOADS_DIRECTORY/Recoveries /Recoveries; bye" $AFH_LOGIN
  echo ""
  echo "ENTER TO CONTINUE"
  read
  END=$(date +%s)
  echo "${green}Recoveries Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

6 )
  # Upload ToolKits
  clear
  BEGIN=$(date +%s)
  lftp -e "mirror -R $UPLOADS_DIRECTORY/AIO_ToolKit; bye" $AFH_LOGIN
  echo ""
  echo "ENTER TO CONTINUE"
  read
  END=$(date +%s)
  echo "${green}ToolKits Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

7 )
  # Upload BootLogos
  clear
  BEGIN=$(date +%s)
  lftp -e "mirror -R $UPLOADS_DIRECTORY/BootLogos /BootLogos; bye" $AFH_LOGIN
  echo ""
  echo "ENTER TO CONTINUE"
  read
  END=$(date +%s)
  echo "${green}BootLogos Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

8 )
  # Upload Custom Stock Rom
  clear
  BEGIN=$(date +%s)
  lftp -e "mirror -R $UPLOADS_DIRECTORY/Custom_Stock_Rom /Custom_Stock_Rom; bye" $AFH_LOGIN
  echo ""
  echo "ENTER TO CONTINUE"
  read
  END=$(date +%s)
  echo "${green}Custom Stock Rom Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

9 )
  # Upload Custom GSI Rom
  clear
  BEGIN=$(date +%s)
  lftp -e "mirror -R $UPLOADS_DIRECTORY/Custom_GSI_Roms /Custom_GSI_Roms; bye" $AFH_LOGIN
  echo ""
  echo "ENTER TO CONTINUE"
  read
  END=$(date +%s)
  echo "${green}Custom GSI Rom Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

10 )
  # Delete Android 9 Roms
  clear
  BEGIN=$(date +%s)
  rm -rf $UPLOADS_DIRECTORY/Roms/9/*
  echo ""
  END=$(date +%s)
  echo "${green}Android 9 Roms Deleted!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  read
  clear
;;
#############################################################

11 )
  # Delete Android 10 Roms
  clear
  BEGIN=$(date +%s)
  rm -rf $UPLOADS_DIRECTORY/Roms/10/*
  echo ""
  END=$(date +%s)
  echo "${green}Android 10 Roms Deleted!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  read
  clear
;;
#############################################################

12 )
  # Delete Android 11 Roms
  clear
  BEGIN=$(date +%s)
  rm -rf $UPLOADS_DIRECTORY/Roms/11/*
  echo ""
  END=$(date +%s)
  echo "${green}Android 11 Roms Deleted!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  read
  clear
;;
#############################################################

13 )
  # Delete Android 12 Roms
  clear
  BEGIN=$(date +%s)
  rm -rf $UPLOADS_DIRECTORY/Roms/12/*
  echo ""
  END=$(date +%s)
  echo "${green}Android 12 Roms Deleted!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  read
  clear
;;
#############################################################

14 )
   # Delete Recoveries
   clear
   BEGIN=$(date +%s)
   rm -rf $UPLOADS_DIRECTORY/Recoveries/*
   END=$(date +%s)
   echo "${green}Recoveries Deleted!!${reset}"
   echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
   read
   clear
;;
#############################################################

15 )
   # Delete TollKits
   clear
   BEGIN=$(date +%s)
   rm -rf $UPLOADS_DIRECTORY/ToolKits/*
   END=$(date +%s)
   echo "${green}ToolKits Deleted!!${reset}"
   echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
   read
   clear
;;
#############################################################

16 )
   # Delete BootLogos
   clear
   BEGIN=$(date +%s)
   rm -rf $UPLOADS_DIRECTORY/BootLogos/*
   END=$(date +%s)
   echo "${green}BootLogos Deleted!!${reset}"
   echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
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
    echo "Wrong Choice GoofBall, 1-16, 0 to Return to Main Menu"
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
