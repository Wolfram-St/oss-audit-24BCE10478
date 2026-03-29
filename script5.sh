#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Kinshuk Sharma

echo "======================================"
echo " Open Source Manifesto Generator"
echo "======================================"
echo ""

# Take user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
USER_NAME=$(whoami)
OUTPUT="manifesto_$USER_NAME.txt"

echo ""
echo "Generating your manifesto..."

# Create manifesto
echo "----------------------------------------" > $OUTPUT
echo " Open Source Manifesto" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "I use $TOOL as part of my daily work. To me, freedom means $FREEDOM." >> $OUTPUT
echo "I believe in sharing knowledge and building tools that benefit everyone." >> $OUTPUT
echo "One day, I will create $BUILD and make it freely available to the world." >> $OUTPUT
echo "" >> $OUTPUT
echo "— $USER_NAME" >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT

