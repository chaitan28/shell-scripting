#!/bin/bash

# Set the threshold for disk usage (in percentage)
THRESHOLD=80

# Get the disk usage percentage for the root filesystem
DISK_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# Check if disk usage exceeds the threshold
if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
    # Send an alert (you can customize this part)
    echo "WARNING: Disk usage is above $THRESHOLD%! Current usage: $DISK_USAGE%" | mail -s "Disk Usage Alert" admin@example.com
    # Alternatively, you can log the alert or send a notification to a monitoring system
    echo "Alert: Disk usage is above $THRESHOLD%! Current usage: $DISK_USAGE%"
else
    echo "Disk usage is under control. Current usage: $DISK_USAGE%"
fi