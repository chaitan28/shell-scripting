#!/bin/bash
FREE_SPACE=$(free -mt | grep Total | awk '{print $4}')
TH=500
if [ $FREE_SPACE -lt $TH ]; then
           echo "warning, RAM usage is above $TH !. Current Usage : $FREE_SPACE"
else
            echo "RAM usage is in permissible limits. Current Usage : $FREE_SPACE"
fi