#!/bin/bash

# Copyright (C) 2019-Present A-Team Digital Solutions
# A-Team Variables File- "1 Variables File To Rule Them All"


# DYNAMIC Variables- Change To Match YOU
######################################################
#
# Locations
#
## Desktop Directory
DESKTOP_DIRECTORY=~/Desktop
## Uploads Directory
UPLOADS_DIRECTORY="/media/pizzag/Android/Uploads"
# Folder that holds your rom source folders
PATH_TO_ROMS="/media/pizzag/Android/Roms"  
# Folder That Holds Your Recovery Sources
PATH_TO_RECOVERIES="/media/pizzag/Android/Recoveries"
# Recoveries Upload Directory- Only change Recoveries entry if needed 
RECOVERY_UPLOADS_DIRECTORY="$UPLOADS_DIRECTORY/Recoveries"                           
# Android File Host FTP Login Info- Free if you ask for Dev FTP Access
AFH_LOGIN="ftp://YourUserName:YourPassWord@uploads.androidfilehost.com:21"   # Should only need to change Username & Pass

export ROM_26

#
# Recovery List- According to folder Name*
RECOVERY_1="Batik       "  #  Keep This Spacing
RECOVERY_2="Dark        "  #  Keep This Spacing
RECOVERY_3="Nusantara   "  #  Keep This Spacing
RECOVERY_4="OrangeFox   "  #  Keep This Spacing
RECOVERY_5="PitchBlack  "  #  Keep This Spacing
RECOVERY_6="RedWolf     "  #  Keep This Spacing
RECOVERY_7="SkyHawk     "  #  Keep This Spacing
RECOVERY_8="TWRP        "  #  Keep This Spacing
# Device List- By Name Or Codename- Add Devices HERE
DEVICE_1="beyond0qlte"  #  Keep This Spacing
DEVICE_2="beyond1qlte"
DEVICE_3="beyond2qlte"  #  Keep This Spacing
DEVICE_4="d1q"
DEVICE_5="d2q"  #  Keep This Spacing
DEVICE_6="olives"
DEVICE_7=""
DEVICE_8=""
DEVICE_9=""
DEVICE_10=""
DEVICE_11=""
DEVICE_12=""
DEVICE_13=""
DEVICE_14=""
DEVICE_15=""
DEVICE_16=""
DEVICE_17=""  #  Keep This Spacing
DEVICE_18=""
DEVICE_19=""
DEVICE_20=""
DEVICE_21=""
DEVICE_22=""
DEVICE_23=""
DEVICE_24=""
DEVICE_25=""
#
# Rom List 1 for Proper Rom Mneu Spacing
#
## Adapt to your rom folder name, must match exactly
ROM_1="AICP     "   
ROM_2="AospK    "  #  Keep This Spacing
ROM_3="TEST     "
ROM_4="         "  #  Keep This Spacing
ROM_5="         "
ROM_6="         "
ROM_7="         "
ROM_8="         "
ROM_9="         "
ROM_10="          "
ROM_11="          "
ROM_12="TEST      "
ROM_13="          "  #  Keep This Spacing
ROM_14="          "
ROM_15="          "
ROM_16="          "
ROM_17="          "  #  Keep This Spacing
ROM_18="          "
ROM_19="          "
ROM_20="          "
ROM_21="          "
ROM_22="          "
ROM_23="          "
ROM_24="          "
ROM_25="          "
ROM_26="TEST      "
ROM_27="          "
ROM_28="          "
ROM_29="          "
ROM_30="          "
ROM_31="          "
ROM_32="          "
ROM_33="          "
ROM_34="          "
ROM_35="          "
ROM_36="          "  #  Keep This Spacing
ROM_37="          "
ROM_38="TEST      "
ROM_39="          "
ROM_40="          "
ROM_41="          "
ROM_42="          "
ROM_43="          "
ROM_44="          "
ROM_45="          "  #  Keep This Spacing
ROM_46="          "
ROM_47="          "
ROM_48="          "
ROM_49="          "
ROM_50="          "
#
# Rom List 2 for Rom Folder Variables
#
#  *Keep Quotes Hugging Rom Name*
#
R1="AICP"   
R2="AospEx"  
R3="AospK"
R4="PixelEx"  
R5=""
R6=""
R7=""
R8=""
R9=""
R10=""
R11=""
R12=""
R13=""  
R14=""
R15=""
R16=""
R17=""  
R18=""
R19=""
R20=""
R21=""
R22=""
R23=""
R24=""
R25=""
R26=""
R27=""
R28=""
R29=""
R30=""
R31=""
R32=""
R33=""
R34=""
R35=""
R36=""  
R37=""
R38=""
R39=""
R40=""
R41=""
R42=""
R43=""
R44=""
R45=""  
R46=""
R47=""
R48=""
R49=""
R50=""
############################



# STATIC Variables- Don't Change Unless You're a "G"
######################################################
#
# Script Names
AUTO_BUILD_ROMS=". Auto_Build_Roms.sh"
AUTO_BUILD_RECOVERIES=". Auto_Build_Recoveries.sh"
ROM_BUILD_SCRIPT=". Build_A-Team.sh"
RECOVERY_BUILD_SCRIPT=". Build_A-Team_Recoveries.sh"
MAIN_MENU=". A-Team_Rom_Builder.sh"
DEVICE_MENU=". Device_Menu.sh"
RECOVERY_MENU=". Recovery_Menu.sh"
ROM_MENU_11=". Rom_Menu.sh"
UPLOAD_MENU=". Upload_Menu.sh"
SELECTOR_GAPPS=". Selector_Gapps.sh"
SELECTOR_ANDROID=". Selector_Android.sh"
#
# Locations
#
# Android 11
PATH_TO_UPLOAD_11="$UPLOADS_DIRECTORY/Roms_Android-11"  
# Android 10
PATH_TO_UPLOAD_10="$UPLOADS_DIRECTORY/Roms_Android-10"  
# Android 9
PATH_TO_UPLOAD_9="$UPLOADS_DIRECTORY/Roms_Android-9"  
#
############################
