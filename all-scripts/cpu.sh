#!/bin/bash

# Set the threshold for CPU usage (in percentage)
THRESHOLD=80

# Get the current CPU usage using `mpstat`
# The `mpstat 1 1` command runs for 1 second and outputs the average CPU usage

CPU_USAGE=$(mpstat 1 1 | awk '/Average:/ {print 100 - $NF}')

# NF stands for "Number of Fields" and represents the value of the last field in the current line.
# For example, if a line has 12 fields, $NF is equivalent to $12 and exacts 12 column value 

# Check if CPU usage exceeds the threshold
if (( $(echo "$CPU_USAGE > $THRESHOLD" | bc -l) )); then
   
    echo "WARNING: CPU usage is above $THRESHOLD%! Current usage: $CPU_USAGE%" | mail -s "CPU Usage Alert" chaitanyancd@gmail.com
   
    echo "Alert: CPU usage is above $THRESHOLD%! Current usage: $CPU_USAGE%"
else
    echo "CPU usage is under control. Current usage: $CPU_USAGE%"
fi