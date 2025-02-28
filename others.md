### 1. Debugging (set)
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
Example:
 */10 * * * * /path/to/task.sh        # Run a script every 10 minutes.  * every hour 
 grep CRON /var/log/syslog            # check the logs 
```
- Minute                  (0 - 59)	
- Hour                    (0 - 23)	
- Day of the month        (1 - 31)	
- Month                   (1 - 12)
- Day of the week         (0 - 6)  0=sunday, 6=saturaday