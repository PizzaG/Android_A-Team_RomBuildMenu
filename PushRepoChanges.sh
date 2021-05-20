#!/bin/bash

# Copyright (C) 2019-Present  A-Team Digital Solutions 
#
## Push Repo Changes To Github

git status
echo ""

git add .
echo ""
echo ""
echo ""
echo ""

echo "Now You Will Enter Your git commit Message..."
echo ""
echo ""
echo " Press Enter To Continue"
echo ""
read git_commit_msg
echo ""


echo $git_commit_msg
echo ""

git commit $git_commit_msg
echo ""

git push
echo ""
echo ""
echo ""

echo "Repo Changes Should Be Pushed"
echo ""
echo ""
echo "Press Enter To Exit"
read
