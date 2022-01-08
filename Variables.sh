#!/bin/bash

# Copyright (C) 2019-Present A-Team Digital Solutions
#
# A-Team Variables File- "1 Variables File To Rule Them All"
#


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
AFH_LOGIN="ftp://YourUserName:YourPassword@uploads.androidfilehost.com:21"   # Should only need to change Username & Pass
#
# Recovery List- According to folder Name *Keep Quotes Hugged*
RECOVERY_1="Batik"  
RECOVERY_2="Dark"  
RECOVERY_3="Nusantara"  
RECOVERY_4="OrangeFox"  
RECOVERY_5="PitchBlack"  
RECOVERY_6="RedWolf"  
RECOVERY_7="SkyHawk"  
RECOVERY_8="TWRP"  
#
# Device List- By Name Or Codename- Add Devices HERE *Keep Quotes Hugged*
DEVICE_1="beyond0qlte"  
DEVICE_2="beyond1qlte"
DEVICE_3="beyond2qlte"  
DEVICE_4="d1q"
DEVICE_5="d2q"  
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
DEVICE_17=""  
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
ROM_1="AICP     "  #  Keep This Spacing- START 1
ROM_2="AospK    "  
ROM_3="Arrow    "
ROM_4="Awaken   "  
ROM_5="Baikal   "  #  Keep This Spacing
ROM_6="Bliss    "
ROM_7="Candy    "
ROM_8="Carbon   "
ROM_9="Calyx    "  #  Keep This Spacing- END 1
ROM_10="Descendant"  #  Keep This Spacing- START 2
ROM_11="Dot       "
ROM_12="          "
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
ROM_26="          "  #  Keep This Spacing
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
ROM_38="          "
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
ROM_49="ExthmUi   "
ROM_50="Lineage   "  #  Keep This Spacing- END 2
#
# Rom List 2 for Rom Folder Variables
#
#  *Keep Quotes Hugging Rom Name*
#
R1="AICP"   
R2="AospK"  
R3="Arrow"
R4="Awaken" 
R5="Baikal"
R6="Bliss" 
R7="Candy"
R8="Carbon"
R9="Calyx"
R10="Descendant"
R11="Dot"
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
R49="ExthmUi"
R50="Lineage"
############################



# STATIC Variables- Don't Change Unless You're a "G"
######################################################
#
# Script Names
AUTO_BUILD_ROMS=". Auto_Build_Roms.sh"
AUTO_BUILD_RECOVERIES=". Auto_Build_Recoveries.sh"
ROM_BUILD_SCRIPT=". Build_A-Team_Roms.sh"
RECOVERY_BUILD_SCRIPT=". Build_A-Team_Recoveries.sh"
MAIN_MENU=". A-Team_Rom_Builder.sh"
DEVICE_MENU=". Device_Menu.sh"
RECOVERY_MENU=". Recovery_Menu.sh"
ROM_MENU_11=". Rom_Menu.sh"
UPLOAD_MENU=". Upload_Menu.sh"
ROM_DOWNLOADER_MENU=". RomDownloaderMenu.sh"
SELECTOR_ANDROID=". Selector_Android.sh"
SELECTOR_BUILD_COMMANDS=". Selector_Rom_Build_Commands.sh"
#
# Locations
#
# Android 9-12
PATH_TO_UPLOAD="$UPLOADS_DIRECTORY/Roms"  
############################
