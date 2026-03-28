#!/bin/bash

# Name: Ravi Kumar Gupta
# Registration Number: 24BCE11274
# Script 4: Log File Analyzer

LOGFILE=$1
KEYWORD=${2:-error}

# Check input
if [ -z "$LOGFILE" ]; then
    echo "Usage: ./script4.sh <logfile> [keyword]"
    exit 1
fi

# Check file exists
if [ ! -f "$LOGFILE" ]; then
    echo "File not found."
    exit 1
fi

# ✅ REQUIRED: Check empty file
if [ ! -s "$LOGFILE" ]; then
    echo "Log file is empty."
    exit 1
fi

COUNT=0

# Read line by line
while read line; do
    echo "$line" | grep -i "$KEYWORD" >/dev/null
    if [ $? -eq 0 ]; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Total lines containing '$KEYWORD': $COUNT"

echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
