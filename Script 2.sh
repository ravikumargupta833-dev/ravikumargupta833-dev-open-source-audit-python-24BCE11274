#!/bin/bash

# Name: Ravi Kumar Gupta
# Script 2: Python Package Inspector

echo ""
echo "---- Python Package Inspector ----"
echo ""

# Check Python installation
if command -v python3 >/dev/null 2>&1; then
    echo "[Python Installed]"
    python3 --version
    echo "Location: $(which python3)"
    echo "License: PSF License (Open Source)"
else
    echo "Python is NOT installed."
    exit 1
fi

echo ""

# Count installed packages
TOTAL=$(pip3 list 2>/dev/null | tail -n +3 | wc -l)
echo "Total Installed Packages: $TOTAL"

echo ""

# Outdated packages
echo "[Outdated Packages]"
pip3 list --outdated 2>/dev/null | head -10

echo ""

# Framework detection
echo "[Framework Detection]"
for pkg in django flask numpy pandas tensorflow pytorch requests sqlalchemy; do
    if pip3 show $pkg &>/dev/null; then
        VERSION=$(pip3 show $pkg | grep Version | awk '{print $2}')
        echo "[FOUND] $pkg == $VERSION"
    else
        echo "[NOT INSTALLED] $pkg"
    fi
done

echo ""
echo "---- End ----"
echo ""
