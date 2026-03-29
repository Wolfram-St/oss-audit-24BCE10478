#!/bin/bash
# Script 1: System Identity Report
# Author: Kinshuk Sharma

STUDENT_NAME="Kinshuk Sharma"
SOFTWARE_CHOICE="Python"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)

DISTRO=$(lsb_release -d | cut -f2)

echo "======================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software : $SOFTWARE_CHOICE"
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo ""
echo "License  : Linux is licensed under GPL (Free Software License)"
