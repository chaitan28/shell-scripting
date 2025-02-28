### 1. Debugging
- set -x: Enables debugging, printing each command before execution.
- set +x: Disables debugging.
```sh
#!/bin/bash
set -x or # set +x   is used for debugging/printint the each command before execution
read -p "Enter the website name:" name
ping -c 1 $name                         # -c option specifies the number of packets to send.
if [ $? -eq 0 ]; then
  echo "site is connected"
else
  echo "site is not connected"
fi
```

### 2. Crontab
The crontab -e command is used to edit the cron jobs for the current user. Cron jobs are scheduled tasks that run automatically at specified intervals.
```sh
crontab -e   # where you can add or modify scheduled jobs.
crontab -l   # List current cron jobs
```
```sh
Minute | Hour | Day | Month |  Day of week 
```