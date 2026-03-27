#!/bin/bash

# Name: Ravi Kumar Gupta
# Registration Number: 24BCE11274
# Script: Python Package Inspector

echo "Checking Python installation..."

if command -v python3 >/dev/null 2>&1
then
    version=$(python3 --version)
    echo "Python is installed."
    echo "Version: $version"

    # Using case statement for simple description
    case $version in
        *3.*)
            echo "This looks like a Python 3 version, which is widely used currently."
            ;;
        *)
            echo "Some other version detected."
            ;;
    esac
else
    echo "Python is not installed on this system."
fi