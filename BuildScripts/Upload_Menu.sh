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
echo "${red}==${reset}${yellow}         *With Gapps*                 ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   1 - Upload Android 9 Roms          ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   2 - Upload Android 10 Roms         ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   3 - Upload Android 11 Roms         ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}                                      ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}        *Without Gapps*               ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   4 - Upload Android 9 Roms          ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   5 - Upload Android 10 Roms         ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   6 - Upload Android 11 Roms         ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}                                      ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   7 - Upload Recoveries              ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   8 - Upload ToolKits                ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}   9 - Upload BootLogos               ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}                                      ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow} *Deletes Files In Upload Folders*    ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}  10 - Delete Android 9 Roms          ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}  11 - Delete Android 10 Roms         ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}  12 - Delete Android 11 Roms         ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}  13 - Delete Recoveries              ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}  14 - Delete ToolKits                ${reset}${red}==${reset}"
echo "${red}==${reset}${yellow}  15 - Delete BootLogos               ${reset}${red}==${reset}"
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
  proxychains lftp -e "mirror -R $UPLOADS_DIRECTORY/Roms_Android-9/Gapps /Roms_Android-9/Gapps; bye" $AFH_LOGIN
  echo ""
  echo "ENTER TO CONTINUE"
  read
  END=$(date +%s)
  echo "${green}Android 9 Roms With Gapps Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

2 )
  # Upload Android 10 Roms + Gapps
  clear
  BEGIN=$(date +%s)
  proxychains lftp -e "mirror -R $UPLOADS_DIRECTORY/Roms_Android-10/Gapps /Roms_Android-10/Gapps; bye" $AFH_LOGIN
  echo ""
  echo "ENTER TO CONTINUE"
  read
  END=$(date +%s)
  echo "${green}Android 10 Roms With Gapps Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

3 )
  # Upload Android 11 Roms + Gapps
  clear
  BEGIN=$(date +%s)
  proxychains lftp -e "mirror -R $UPLOADS_DIRECTORY/Roms_Android-11/Gapps /Roms_Android-11/Gapps; bye" $AFH_LOGIN
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
  # Upload Android 9 Roms- No Gapps
  clear
  BEGIN=$(date +%s)
  proxychains lftp -e "mirror -R $UPLOADS_DIRECTORY/Roms_Android-9/No_Gapps /Roms_Android-9/No_Gapps; bye" $AFH_LOGIN
  echo ""
  echo "ENTER TO CONTINUE"
  read
  END=$(date +%s)
  echo "${green}Android 9 Roms Without Gapps Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

5 )
  # Upload Android 10 Roms- No Gapps
  clear
  BEGIN=$(date +%s)
  proxychains lftp -e "mirror -R $UPLOADS_DIRECTORY/Roms_Android-10/No_Gapps /Roms_Android-10/No_Gapps; bye" $AFH_LOGIN
  echo ""
  echo "ENTER TO CONTINUE"
  read
  END=$(date +%s)
  echo "${green}Android 10 Roms Without Gapps Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

6 )
  # Upload Android 11 Roms- No Gapps
  clear
  BEGIN=$(date +%s)
  proxychains lftp -e "mirror -R $UPLOADS_DIRECTORY/Roms_Android-11/No_Gapps /Roms_Android-11/No_Gapps; bye" $AFH_LOGIN
  echo ""
  echo "ENTER TO CONTINUE"
  read
  END=$(date +%s)
  echo "${green}Android 11 Roms Without Gapps Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

7 )
  # Upload Recoveries
  clear
  BEGIN=$(date +%s)
  proxychains lftp -e "mirror -R $UPLOADS_DIRECTORY/Recoveries /Recoveries; bye" $AFH_LOGIN
  echo ""
  echo "ENTER TO CONTINUE"
  read
  END=$(date +%s)
  echo "${green}Recoveries Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

8 )
  # Upload ToolKits
  clear
  BEGIN=$(date +%s)
  proxychains lftp -e "mirror -R $UPLOADS_DIRECTORY/ToolKits /ToolKits; bye" $AFH_LOGIN
  echo ""
  echo "ENTER TO CONTINUE"
  read
  END=$(date +%s)
  echo "${green}ToolKits Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

9 )
  # Upload BootLogos
  clear
  BEGIN=$(date +%s)
  proxychains lftp -e "mirror -R $UPLOADS_DIRECTORY/BootLogos /BootLogos; bye" $AFH_LOGIN
  echo ""
  echo "ENTER TO CONTINUE"
  read
  END=$(date +%s)
  echo "${green}BootLogos Uploaded!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

10 )
  # Delete Android 9 Roms
  clear
  BEGIN=$(date +%s)
  rm -rf $UPLOADS_DIRECTORY/Roms_Android-9/Gapps/*
  rm -rf $UPLOADS_DIRECTORY/Roms_Android-9/No_Gapps/*
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
  rm -rf $UPLOADS_DIRECTORY/Roms_Android-10/Gapps/*
  rm -rf $UPLOADS_DIRECTORY/Roms_Android-10/No_Gapps/*
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
  rm -rf $UPLOADS_DIRECTORY/Roms_Android-11/Gapps/*
  rm -rf $UPLOADS_DIRECTORY/Roms_Android-11/No_Gapps/*
  echo ""
  END=$(date +%s)
  echo "${green}Android 11 Roms Deleted!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  read
  clear
;;
#############################################################

13 )
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

14 )
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

15 )
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
    echo "Wrong Choice AssFace, 1-15, 0 to Return to Main Menu"
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
