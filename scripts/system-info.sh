#!/bin/bash

os_name=$(grep '^NAME=' /etc/os-release | cut -d '"' -f 2)
os_version=$(grep '^VERSION_ID=' /etc/os-release | cut -d '"' -f 2)
kernel_version=$(uname -r)
cpu_model=$(grep "model name" /proc/cpuinfo | awk '!seen[$0]++' | awk -F: '{print $2}')
cpu_cores=$(grep "cpu cores" /proc/cpuinfo | awk '!seen[$0]++' | awk -F: '{print $2}')
total_ram=$(free -h | grep "Mem:" | awk '{print $2}')
used_ram=$(free -h | grep "Mem:" | awk '{print $3}')
available_ram=$(free -h | grep "Mem:" | awk '{print $7}')
total_disk=$(df -h / | awk 'NR==2 {print $2}')
used_disk=$(df -h / | awk 'NR==2 {print $3}')
available_disk=$(df -h / | awk 'NR==2 {print $4}')
disk_usage=$(df -h / | awk 'NR==2 {print $5}')
uptime=$(uptime -p)
current_date=$(date +%d-%b-%y)
current_time=$(date +%H:%M:%S)



echo "================================"
echo "     LINUX SYSTEM INFO TOOL"
echo "================================"

echo ""
echo "Welcome to Linux System Information Tool!"

echo ""
echo "--- Operating System ---"
echo "Operating System: $os_name"
echo "OS Version: $os_version"
echo "Kernel Version: $kernel_version"

echo ""
echo "--- CPU Information ---"
echo "CPU Model: $cpu_model"
echo "CPU Cores: $cpu_cores"

echo ""
echo "--- RAM Information ---"
echo "Total RAM: $total_ram"
echo "Used RAM: $used_ram"
echo "Available RAM: $available_ram"

echo ""
echo "--- Disk Information ---"
echo "Total Disk: $total_disk"
echo "Used Disk: $used_disk"
echo "Available Disk: $available_disk"
echo "Disk Usage: $disk_usage"

echo ""
echo "--- System Uptime ---"
echo "$uptime"

echo ""
echo "--- Date & Time ---"
echo "Current Date: $current_date"
echo "Current Time: $current_time"

echo ""
echo "================================"
echo "        REPORT COMPLETE"
echo "================================"

