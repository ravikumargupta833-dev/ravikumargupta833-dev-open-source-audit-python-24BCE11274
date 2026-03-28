#!/bin/bash

# Name: Ravi Kumar Gupta
# Registration Number: 24BCE11274
# Script 5: Open Source Manifest Generator

echo "Answer a few questions..."
echo ""

read -p "Which tool do you use daily? " TOOL
read -p "What does freedom mean to you? " FREEDOM
read -p "What do you want to build in future? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifest_$(whoami).txt"

# Generate manifesto
echo "On $DATE, I reflected on open-source tools." > $OUTPUT
echo "I regularly use $TOOL, which helps me in my daily work." >> $OUTPUT
echo "For me, freedom means $FREEDOM." >> $OUTPUT
echo "In future, I want to build $BUILD and share it openly." >> $OUTPUT
echo "Open source connects learning, creativity, and collaboration." >> $OUTPUT

echo ""
echo "Manifest saved to $OUTPUT"
echo "------ Content ------"
cat $OUTPUT
