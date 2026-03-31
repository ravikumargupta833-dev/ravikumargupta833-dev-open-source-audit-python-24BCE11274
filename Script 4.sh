#!/bin/bash

# Name: Ravi Kumar Gupta
# Registration Number: 24BCE11274
# Script: Log File Analyzer

logfile=$1
keyword=${2:-error}

if [ -z "$logfile" ]
then
    echo "Usage: ./script4.sh <logfile> [keyword]"
    exit 1
fi

if [ ! -f "$logfile" ]
then
    echo "File not found."
    exit 1
fi

count=0

# Reading file line by line
while read line
do
    echo "$line" | grep -i "$keyword" >/dev/null
    if [ $? -eq 0 ]
    then
        count=$((count+1))
    fi
done < "$logfile"

echo "Total lines containing '$keyword': $count"

echo ""
echo "Last 5 matching lines:"
grep -i "$keyword" "$logfile" | tail -n 5
