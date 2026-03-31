#!/bin/bash

# Name: Ravi Kumar Gupta
# Registration Number: 24BCE11274
# Script: Open Source Manifest Generator

echo "Answer a few questions..."

read -p "Which tool do you use daily? " tool
read -p "What does freedom mean to you? " freedom
read -p "What do you want to build in future? " goal

username=$(whoami)
date_now=$(date +%Y-%m-%d)

filename="manifest_${username}.txt"

# Creating paragraph
echo "On $date_now, I reflected on my usage of open tools." > $filename
echo "I regularly use $tool, which plays an important role in my daily work." >> $filename
echo "For me, freedom means $freedom." >> $filename
echo "In the future, I want to build $goal using open-source technologies." >> $filename
echo "This shows how open-source connects learning and creativity." >> $filename

echo ""
echo "Manifest saved in $filename"
echo "----- Content -----"
cat $filename
