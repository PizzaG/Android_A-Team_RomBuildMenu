#!/bin/bash

## Gapps Selector
echo ""
echo "Choose GAPPS Type:"
echo ""
echo "1 For Gapps"
echo "2 For No Gapps"
#echo "2 For Micro Gapps"
echo ""
echo "Select Your Option & PRESS ENTER"
read gapps
if [[ $gapps == 1 ]]
then
export HAS_GAPPS=true
clear
echo ""
echo "Including Gapps..."
echo ""
elif [[ $gapps == 2 ]]
then
clear
echo ""
echo "Not Including Gapps..."
echo ""
#elif [[ $gapps == 2 ]]
#then
#export GAPPS_TYPE=microg
fi
