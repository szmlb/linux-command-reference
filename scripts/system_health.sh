#!/bin/bash

# System Health Check Script
# A simple script that reports current system resource usage using common Linux commands.

echo "==============================="
echo " System Health Report"
echo " Date: $(date)"
echo " Host: $(hostname)"
echo "==============================="

echo ""
echo "--- CPU & Memory Usage (top) ---"
# Using top in batch mode (-b) for 1 iteration (-n 1) to grab current stats
top -b -n 1 | head -n 5

echo ""
echo "--- Detailed Memory (free) ---"
# Display memory in human readable format
free -h

echo ""
echo "--- Disk Usage (df) ---"
# Show disk space on main filesystems
df -h | grep -E '^Filesystem|/dev/'

echo ""
echo "--- Top 5 CPU Consuming Processes ---"
# Using ps to get processes, sorting by CPU usage
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6

echo ""
echo "==============================="
echo " Report Complete"
echo "==============================="
