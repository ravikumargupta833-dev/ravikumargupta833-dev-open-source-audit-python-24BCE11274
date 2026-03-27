#!/bin/bash

# Name: Ravi Kumar Gupta
# Registration Number: 24BCE11274
# Script: Disk and Permission Auditor

directories="/etc /var/log /home /usr/bin /tmp"

echo "---- Disk and Permission Audit ----"

for dir in $directories
do
    echo ""
    echo "Directory: $dir"

    # Permissions and owner
    ls -ld $dir

    # Size of directory
    size=$(du -sh $dir 2>/dev/null | cut -f1)
    echo "Size: $size"
done