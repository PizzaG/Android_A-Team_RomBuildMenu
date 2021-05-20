# A-Team Android 9-11 Rom & Recovery Build Menu

# Features
```
Add Multiple Roms
Add Multiple Recoveries
Add Multiple Devices 
Android File Host Upload Menu
Python Version Selector
Java Version Selector
Gapps & No Gapps Selector When Building
Final Rom zip Additions such as Magisk, BusyBox 
Custom Post Boot Magisk Scripts to add/change device user settings on First boot
Download A-Team Vendor Add-On From Main Menu

```


# Info
```
This set of scripts aims to simplify and manage the building of multiple roms, recoveries & devices.  It also has options to build roms with or without gapps 
and it will move them to the correct upload folders for you.  I have also included a custom A-Team vendor Package that contains a slimmed down version of Android
11 Gapps.

The layout of the scripts is as such.  Main Menu, usually located on Desktop.  it can call your seperate device Menu's and has a Super Build Option that will
build all roms for all devices, gapps & no gapps, and then uploads them to the Android File Host ftp Dev account of your choice.  BuildScripts folder can go
wherever you want but you will have to modify locations to match your folder structure.  There is 1 variable to set in Main Menu and a seperate Vaiables file 
in BuildScripts folder where you can set the rest.

Scripts in the RomBuildScripts folder are meant to be placed in the root of your rom folders and they are called by the menus to build your device rom.  To add
more roms, simply copey & paste, then adapt them to your new rom.  

Scripts in the RecoveryBuildScripts folder are meant to be placed in the root of your recovery folders and they are called by the menus to build your device
recovery.  To add more recoveries, simply copey & paste, then adapt them to your new recovery.  

Build_A-Team_Recoveries.sh goes into the root of each Recovery folder

Build_A-Team.sh goes into the root of each Rom folder

Changelog.txt goes into the root of each Rom folder and can be changed to match your custom rom changes
```

# Prereq 1
```
Add the below code to your device.mk or common.mk file in your device tree


####################
## A-Team Add-Ons ##
##################################################################
#
A-TEAM_PATH := vendor/A-Team 

# A-Team Prebuilts                                               
$(call inherit-product, $(A-TEAM_PATH)/Prebuilt_Apps/A-Team.mk)  
                                                                 
# BootAnimation Resolution                                       
TARGET_BOOT_ANIMATION_RES := 1080 

# Device Maintainer
DEVICE_MAINTAINER := PizzaG                               
                                                                 
# Gapps Selector                                                 
ifeq ($(HAS_GAPPS), true)                                        
  $(call inherit-product, vendor/A-Team/Gapps/gapps.mk)                 
endif                                                            
##################################################################
```


# Prereq 2
```
Download A-Team Vendor Add-On from Main Menu
Drop A-Team folder into your rom vendor folder
```


# Copyright (C) 2019-Present A-Team Digital Solutions
```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
