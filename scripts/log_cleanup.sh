#!/bin/bash

# Ensure script is run as root
if [ "$(id -u)" -ne 0 ]; then
	echo "This script must be run as root."
       	exit 1
fi

# Define log directory and age criteria
LOG_DIR="/var/log"
LOG_AGE="+7"  # Delete logs older than 7 days
LOG_FILE="/var/log/log_cleanup.log"  # Log of cleanup activity

# Log the start time
echo "Starting cleanup at $(date)" >> "$LOG_FILE"

# Find and delete log files older than 7 days, excluding important logs
find "$LOG_DIR" -type f -name "*.log" ! -name "syslog" -mtime "$LOG_AGE" -exec rm -f {} \; -exec echo "$(date): Deleted {}" >> "$LOG_FILE" \;

# Confirmation message
echo "Log cleanup complete: Removed logs older than $LOG_AGE days."
