#!/bin/bash

# Name: Ravi Kumar Gupta
# Registration Number: 24BCE11274
# Script 1: System Identity Report

echo ""
echo "---- System Identity Report ----"
echo ""

# Linux distribution
DISTRO=$(lsb_release -d | awk -F'\t' '{print $2}')
echo "Linux Distribution : $DISTRO"

# Kernel version
KERNEL=$(uname -r)
echo "Kernel Version     : $KERNEL"

# Current user
USER=$(whoami)
echo "Logged in User     : $USER"

# Uptime
UPTIME=$(uptime -p)
echo "System Uptime      : $UPTIME"

# Hostname
HOSTNAME=$(hostname)
echo "Hostname           : $HOSTNAME"

# Python version
PYVER=$(python3 --version 2>&1)
echo "Python Version     : $PYVER"

# Python path
PYPATH=$(which python3)
echo "Python Path        : $PYPATH"

# CPU
CPU=$(lscpu | grep 'Model name' | awk -F':' '{print $2}' | xargs)
echo "CPU                : $CPU"

# RAM
RAM=$(free -h | awk '/^Mem:/ {print $2}')
echo "Total RAM          : $RAM"

echo ""
echo "---- End of Report ----"
echo ""
