# Open Source Audit – Python

**Name:** Ravi Kumar Gupta
**Registration Number:** 24BCE11274

---

## Overview

This project is part of an open source audit where I explored Python as an open-source software. Initially, I thought this would mostly be about writing scripts and documenting commands, but as I worked through it, it turned out to be more about understanding how open-source software actually works in real systems.

I chose Python because it’s something I already use quite often, and it seemed like a good way to connect theory with something practical. Along with the report, I wrote a set of shell scripts to understand how Python interacts with a Linux environment.

---

## Scripts Description

### Script 1: System Identity Report

This script prints basic system information such as Linux distribution, kernel version, user details, uptime, and hardware info. It also shows the installed Python version and its path. I found this useful as a quick system overview, especially when working on a new machine.

---

### Script 2: Python Package Inspector

This script checks whether Python is installed and then looks at the installed packages using pip. It also tries to detect commonly used frameworks like Django, Flask, NumPy, etc. From what I observed, this helps quickly understand what kind of development environment is set up.

---

### Script 3: Disk and Permission Auditor

This script goes through important system directories and prints their permissions and disk usage. It also checks the Python configuration directory (`/etc/python3`) and performs a small security check for world-writable files. I think this part was interesting because it connects Linux permissions with real-world security concerns.

---

### Script 4: Log File Analyzer

This script reads a log file and searches for a given keyword (default is "error"). It counts how many matching lines are present and prints the last few entries. It also handles cases where the file is missing or empty, which makes it a bit more reliable in practice.

---

### Script 5: Open Source Manifest Generator

This script asks a few simple questions and generates a text file describing a small personal open-source statement. It’s a simple idea, but I think it connects the technical side of scripting with the philosophy behind open source.

---

## How to Run

Before running the scripts, give execute permission:

```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

Then run each script like this:

```bash
./script1.sh
./script2.sh
./script3.sh
./script4.sh
./script4.sh /var/log/syslog error
./script5.sh
```

---

## Notes

* Script 4 can take optional arguments:

  * First argument → log file path
  * Second argument → keyword to search

* Script 5 creates a text file in the current directory with your responses.

* All scripts were tested on Ubuntu Linux (22.04), so they should work on similar environments.

---

## Final Thought

Working on this project helped me understand that open source is not just about free software, but about how people collaborate and build things together. I think this project gave me a more practical view of both Linux and Python beyond just writing code.

---
