#!/usr/bin/env bash

echo "Collecting server statistics..."
echo "-----------------------------------"

# CPU Usage
echo "CPU Usage:"
ps -eo %cpu,%mem,cmd --sort=-%cpu | head -n 5
echo "-----------------------------------"

# Sorted by memory
echo "Top 5 Memory Consumors:"
ps -eo %mem,%cpu,cmd --sort=-%mem | head -n 5
echo "-----------------------------------"  

# Memory Usage
echo "Memory Usage:"
free -h 
echo "-----------------------------------"

# Disk Usage
echo "Disk Usage:"
df -h 
echo "-----------------------------------"

# Network Statistics
echo "Network Statistics:"
ifconfig
echo "-----------------------------------"

# Uptime
echo "Server Uptime:"
uptime
echo "-----------------------------------"
echo "Statistics collection complete."

