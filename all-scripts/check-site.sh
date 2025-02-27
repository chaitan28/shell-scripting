#!/bin/bash
read -p "Enter the website name:" name
ping -c 1 $name                         # -c option specifies the number of packets to send.
if [ $? -eq 0 ]; then
  echo "site is connected"
else
  echo "site is not connected"
fi