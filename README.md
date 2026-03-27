# Open Source Audit – Python

**Name:** Ravi Kumar Gupta  
**Registration Number:** 24BCE11274  

---

## Overview

This project is part of an open source audit where I explored Python as an open-source software. Along with some theory work, I created a few shell scripts to understand how things actually work in a Linux system.

Honestly, the goal was not just writing scripts, but also getting comfortable with basic Linux commands and seeing how Python exists in the system.

---

## Scripts Description

### Script 1: System Identity Report
This script prints general system details like OS, kernel version, user info, uptime, etc. It also mentions Python’s open-source nature.

### Script 2: Python Package Inspector
Checks whether Python is installed or not. If yes, it shows the version and a small description.

### Script 3: Disk and Permission Auditor
Loops through some important directories and displays permissions, ownership, and size. Useful to understand system structure.

### Script 4: Log File Analyzer
Takes a log file and searches for a keyword (default is "error"). It counts matches and shows last few lines.

### Script 5: Open Source Manifest Generator
Takes user input and creates a short text file describing thoughts about open-source and personal goals.

---

## How to Run

First, give execute permission:

```bash
chmod +x script1.sh
chmod +x script2.sh
chmod +x script3.sh
chmod +x script4.sh
chmod +x script5.sh