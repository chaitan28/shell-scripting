#!/bin/bash

THRESHOLD=80
DISK_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g') # sed will replace % with space 

if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
   
    echo "WARNING: Disk usage is above $THRESHOLD%! Current usage: $DISK_USAGE%" | mail -s "Disk Usage Alert" chaitanyancd@gmail.com
    
    echo "Alert: Disk usage is above $THRESHOLD%! Current usage: $DISK_USAGE%"
else
    echo "Disk usage is under control. Current usage: $DISK_USAGE%"
fi