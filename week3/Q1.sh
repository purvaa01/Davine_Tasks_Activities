#!/bin/bash

echo "System Information"
echo "Hostname: $(hostname)"
echo "Current user: $(whoami)"
echo "Date: $(date)"
echo "uptime: $(uptime)"
echo "Memory Usage:"
free -h
echo "Disk Usage:"
df -h
