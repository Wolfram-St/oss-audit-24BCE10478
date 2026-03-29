#!/bin/bash
# Script 4: Log File Analyzer
# Author: Kinshuk Sharma

LOGFILE=$1
KEYWORD=${2:-"error"}   # default keyword = error
COUNT=0

echo "======================================"
echo " Log File Analyzer"
echo "======================================"

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Check if file is empty
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: File is empty. Retrying..."
    sleep 2
fi

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
