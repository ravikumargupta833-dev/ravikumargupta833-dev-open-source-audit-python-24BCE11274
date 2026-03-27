#!/bin/bash

# Name: Ravi Kumar Gupta
# Registration Number: 24BCE11274
# Script: System Identity Report

# Collecting system details using command substitution
distro=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2)
kernel=$(uname -r)
user=$(whoami)
home_dir=$HOME
uptime_info=$(uptime -p)
current_time=$(date)

echo "---- System Identity Report ----"
echo "Linux Distribution: $distro"
echo "Kernel Version: $kernel"
echo "Current User: $user"
echo "Home Directory: $home_dir"
echo "System Uptime: $uptime_info"
echo "Current Date & Time: $current_time"

echo ""
echo "Note: Python is open-source software and distributed under the PSF License."