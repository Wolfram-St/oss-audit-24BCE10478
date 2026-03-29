#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Kinshuk Sharma

PACKAGE="python3"

echo "======================================"
echo " FOSS Package Inspector"
echo "======================================"

# Check if package is installed
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    
    echo ""
    echo "Package Details:"
    apt show $PACKAGE 2>/dev/null | grep -E 'Version|Maintainer|Description'

else
    echo "$PACKAGE is NOT installed."
fi

echo ""
echo "Philosophy Note:"

# Case statement
case $PACKAGE in
    python3)
        echo "Python: a powerful open-source language designed for readability and community-driven innovation."
        ;;
    git)
        echo "Git: a distributed version control system that enables collaborative development."
        ;;
    mysql)
        echo "MySQL: open-source database powering millions of applications worldwide."
        ;;
    apache2)
        echo "Apache: the web server that helped build the modern internet."
        ;;
    *)
        echo "Unknown package"
        ;;
esac
