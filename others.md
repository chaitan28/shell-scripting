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


### 3. AWK Command

- awk is a versatile programming language for pattern scanning and processing. It is particularly useful for working with structured text
```sh
awk '{print $1, $3}' filename  # Print the 1st and 3rd columns of csv file(,seperated file)
awk -F, '{print $4, $5}' table.csv 
awk -F, '{if($1>105) print $1}' table.csv
```

### 4. CUT Command
- The cut command in Linux/Unix is a powerful utility used to extract specific sections (columns or fields) from each line of a file or input text.
```sh
cut -d, -f 1,3 table.csv  #-d: delimiter(type comma,) deprints 1 and 3 column
cut -c1 table.csv         #print the 
```
### 5. grep Command
- grep is used to search for patterns in files or input text. It prints lines that match a given pattern.
```sh
grep -i "pattern" filename # -i will ignore the upper case/lower case.
egrep "kara|merry|green" user.csv file.txt # searching multiple names in multiple files.
```

### 6. SED Command
- sed (Stream Editor) is used for text substitution, deletion, insertion, and other text manipulations.
```sh
sed -i  's/old/new/g' filename
sed -i 's/chaitanya/Chaitanya/' file.txt
# It searches for the first occurrence of chaitanya on each line in file.txt and replaces it with Chaitanya
sed -i 's/chaitanya/raghu/g' file.txt 
# The above command replaces all chaitanya with raghu in all the lines in file.txt
```