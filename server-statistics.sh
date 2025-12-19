#!/usr/bin/env bash

echo "Collecting server statistics..."
echo "-----------------------------------"

# CPU Usage
echo "CPU Usage:"
ps -eo %cpu,%mem,cmd --sort=-%cpu | head -n 6
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

