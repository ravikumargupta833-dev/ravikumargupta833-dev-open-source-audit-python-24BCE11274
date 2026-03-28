#!/bin/bash

# Name: Ravi Kumar Gupta
# Script 3: Disk and Permission Auditor

echo ""
echo "---- Disk and Permission Auditor ----"
echo ""

# Directories to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""

# ✅ REQUIRED: Python config directory check
echo "[Python Config Directory Check]"
if [ -d "/etc/python3" ]; then
    ls -ld /etc/python3
else
    echo "Config directory not found"
fi

echo ""
echo "---- End ----"
