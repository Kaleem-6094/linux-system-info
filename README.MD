
# Linux System Information Tool

A beginner-friendly Bash project that collects and displays important Linux system information directly from the terminal.

## Features

This tool automatically collects and displays:

- Operating System name and version
- Linux Kernel version
- CPU model and CPU cores
- Total, used, and available RAM
- Total, used, and available disk space
- System uptime
- Current date and time

## Project Structure

```text
linux-system-info/
├── scripts/
│   └── system-info.sh
├── logs/
├── reports/
└── README.md
```

## Requirements

- Linux operating system
- Bash shell
- Standard Linux commands:
  - grep
  - cut
  - uname
  - free
  - df
  - awk
  - uptime
  - date

## Installation

Clone or download this project.

Navigate to the project directory:

```bash
cd linux-system-info
```

Give execution permission to the script:

```bash
chmod +x scripts/system-info.sh
```

## Usage

Run the script:

```bash
./scripts/system-info.sh
```

## Example Output

```text
--- Operating System ---
Operating System: Ubuntu
OS Version: 24.04

--- CPU Information ---
CPU Model: Intel Core i5
CPU Cores: 2

--- RAM Information ---
Total RAM: 7.7Gi
Used RAM: 450Mi
Available RAM: 7.3Gi

--- Disk Information ---
Total Disk: 1007G
Used Disk: 4.7G
Available Disk: 951G
Disk Usage: 1%
```

## Learning Objectives

This project helped me practice:

- Bash scripting fundamentals
- Variables
- Command substitution
- Linux system commands
- Pipes and text processing
- Conditional statements
- File permissions
- Terminal output formatting

## Project Status

Completed - Beginner Linux & Bash Practice Project.

## Author

Kaleem
