#!/bin/bash

# =============================================
# Script: server-stats.sh
# Purpose: Display basic server performance stats
# =============================================

echo "============================================="
echo "        SERVER PERFORMANCE STATS"
echo "============================================="
echo ""

# --------- CPU USAGE ---------
echo "CPU USAGE:"
# top -bn1 | grep "Cpu(s)" | awk to extract user+system+nice usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{usage=100-$8} END {print usage}')
echo "Total CPU Usage: $cpu_usage%"

echo ""

# --------- MEMORY USAGE ---------
echo "MEMORY USAGE:"
# free -m for MB, awk to calculate used and total
mem_total=$(free -m | awk '/^Mem:/{print $2}')
mem_used=$(free -m | awk '/^Mem:/{print $3}')
mem_free=$(free -m | awk '/^Mem:/{print $4}')
mem_percent=$(( mem_used * 100 / mem_total ))
echo "Used: $mem_used MB / Total: $mem_total MB ($mem_percent%)"
echo "Free: $mem_free MB"

echo ""

# --------- DISK USAGE ---------
echo "DISK USAGE:"
# df -h / to get root filesystem stats
disk_used=$(df -h / | awk 'NR==2 {print $3}')
disk_total=$(df -h / | awk 'NR==2 {print $2}')
disk_percent=$(df -h / | awk 'NR==2 {print $5}')
echo "Used: $disk_used / Total: $disk_total ($disk_percent)"

echo ""

# --------- TOP 5 PROCESSES BY CPU ---------
echo "TOP 5 PROCESSES BY CPU USAGE:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

echo ""

# --------- TOP 5 PROCESSES BY MEMORY ---------
echo "TOP 5 PROCESSES BY MEMORY USAGE:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6

echo ""

# --------- OPTIONAL STATS (Stretch Goals) ---------
echo "OPTIONAL STATS:"
# OS Version
echo "OS Version: $(cat /etc/os-release | grep PRETTY_NAME | cut -d '=' -f2 | tr -d '\"')"

# Uptime
echo "Uptime: $(uptime -p)"

# Load Average
echo "Load Average: $(uptime | awk -F'load average:' '{print $2}')"

# Logged in Users
echo "Logged in Users:"
who | awk '{print $1}' | sort | uniq

# Failed login attempts (last 10 lines of auth log)
if [ -f /var/log/auth.log ]; then
    echo "Recent Failed Login Attempts:"
    grep "Failed password" /var/log/auth.log | tail -n 10
else
    echo "Auth log not available"
fi

echo ""
echo "============================================="
