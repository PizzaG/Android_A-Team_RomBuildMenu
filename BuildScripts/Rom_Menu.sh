#!/bin/bash

# Copyright (C) 2019-Present A-Team Digital Solutions
#
# Generic Device Rom Build Menu
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
echo "${red}=======================================${reset}"
echo "      Android $ANDROID_VERSION Build Menu "
echo ""
echo "Device Selected:"
echo "$DEVICE_CODENAME "
echo ""
echo "${red}=======================================${reset}"
echo " 01 - Build All Roms & Upload "
echo " "
echo " Build Individual Roms "
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
echo "${red} 0${reset} - Build Menu "
echo "${red}00${reset} - Main Menu "
echo "${red}=======================================${reset}"
echo ""
echo -n "Enter selection: "
read menu
echo ""
case ${menu} in
01 )
  # Build All Roms & Upload
  clear
  BEGIN=$(date +%s)
  # Run Auto Multi-Build Rom Script
  #
  # Gapps Selector
  export SELECT_GAPPS=true
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS   
  clear
  # Run Auto Build Script
  $AUTO_BUILD_ROMS 
  END=$(date +%s)
  echo "${green}All Android 11 Roms Built!!${reset}"
  echo ""
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  echo ""
  echo "Press Enter To Begin Auto Upload"
  read
  clear
  # Upload To Android File Host
  proxychains lftp -e "mirror -R $UPLOADS_DIRECTORY/Roms_Android-11 /Roms_Android-11; bye" $AFH_LOGIN
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
  # Rom 1
  clear
  BEGIN=$(date +%s)
  ROM_NAME=$R1
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R1/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R1 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

2 )
  # Rom 2
  clear
  BEGIN=$(date +%s)
  ROM_NAME=$R2
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R2/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R2 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

3 )
  # Rom 3
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R3
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R3/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$ROM_3 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

4 )
  # Rom 4
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R4
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R4/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R4 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

5 )
  # Rom 5
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R5
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R5/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R5 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

6 )
  # Rom 6
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R6
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R6/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R6 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

7 )
  # Rom 7
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R7
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R7/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R7 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

8 )
  # Rom 8
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R8
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R8/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R8 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

9 )
  # Rom 6
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R9
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R9/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R9 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

10 )
  # Rom 10
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R10
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R10/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R10 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

11 )
  # Rom 11
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R11
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R11/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R11 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

12 )
  # Rom 12
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R12
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R12/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R12 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

13 )
  # Rom 13
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R13
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R13/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R13 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

14 )
  # Rom 14
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R14
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R14/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R14 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

15 )
  # Rom 15
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R15
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R15/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R15 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

16 )
  # Rom 16
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R16
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R16/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R16 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

17 )
  # Rom 17
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R17
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R17/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R17 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

18 )
  # Rom 18
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R18
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R18/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R18 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

19 )
  # Rom 19
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R19
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R19/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R19 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

20 )
  # Rom 20
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R20
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R20/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R20 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

21 )
  # Rom 21
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R21
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R21/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R21 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

22 )
  # Rom 22
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R22
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R22/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R22 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

23 )
  # Rom 23
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R23
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R23/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R23 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

24 )
  # Rom 24
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R24
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R24/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R24 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

25 )
  # Rom 25
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R25
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R25/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R25 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

26 )
  # Rom 26
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R26
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R26/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R26 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

27 )
  # Rom 27
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R27
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R27/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R27 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

28 )
  # Rom 28
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R28
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R28/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R28 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

29 )
  # Rom 29
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R29
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R29/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R29 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

30 )
  # Rom 30
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R30
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R30/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R30 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

31 )
  # Rom 31
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R31
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R31/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R31 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

32 )
  # Rom 32
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R32
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R32/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R32 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

33 )
  # Rom 33
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R33
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R33/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R33 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

34 )
  # Rom 34
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R34
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R34/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R34 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

35 )
  # Rom 35
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R35
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R35/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R35 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

36 )
  # Rom 36
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R36
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R36/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R36 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

37 )
  # Rom 37
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R37
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R37/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R37 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

38 )
  # Rom 38
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R38
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R38/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R38 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

39 )
  # Rom 39
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R39
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R39/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R39 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

40 )
  # Rom 40
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R40
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R40/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R40 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

41 )
  # Rom 41
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R41
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R41/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R41 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

42 )
  # Rom 42
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R42
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R42/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R42 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

43 )
  # Rom 43
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R43
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R43/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R43 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

44 )
  # Rom 44
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R44
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R44/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R44 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

45 )
  # Rom 45
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R45
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R45/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R45 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

46 )
  # Rom 46
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R46
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R46/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R46 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

47 )
  # Rom 47
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R47
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R47/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R47 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

48 )
  # Rom 48
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R48
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R48/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R48 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

49 )
  # Rom 49
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R49
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R49/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R49 Built!!${reset}"
  echo "${green}Total time elapsed: $(echo $((${END}-${BEGIN})) | awk '{print int($1/60)"mins "int($1%60)"secs "}')${reset}"
  clear
;;
#############################################################

50 )
  # Rom 50
  clear
  BEGIN=$(date +%s)
  export ROM_NAME=$R50
  cd $SCRIPTS_DIRECTORY
  $SELECTOR_GAPPS
  cd $PATH_TO_ROMS/$R50/$ANDROID_VERSION
  $ROM_BUILD_SCRIPT  
  read
  END=$(date +%s)
  echo "${green}$R50 Built!!${reset}"
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
