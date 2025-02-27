### 1. Defining Variables
variables are used to store data that can be used and manipulated throughout the script
- Variables are defined using the = operator, with no spaces around it.
- Variable names can contain letters, numbers, and underscores, but they cannot start with a number.
```sh
name="John" # (variable = string)
age=25
```
### 2. Accessing Variables
- To access the value of a variable, prefix its name with $
```sh
echo $name
echo $age
```

### 3. Quoting Variables
- Use double quotes (") to preserve spaces and special characters in variable values
```sh
name=john
greeting="Hello, $name"
echo "$greeting"  # Output: Hello, John
```
### 4. Assigning Command Output to a Variable
- Use backticks $() to capture the output of a command and store it in a variable.
```sh
current_date=$(date)
echo "Today is $current_date"
```

### 5. Read-Only Variables
Use the readonly keyword to make a variable immutable (cannot be changed).
```sh
readonly PI=3.14
echo "PI: $PI"
```

### 6. Special Variables
Special variables in shell scripting are predefined variables that provide information about the script, command execution, and user input.<br>
cat special_var.sh 
```sh
#!/bin/bash
echo "Script Name            : $0"
echo "First Argument         : $1"
echo "Print all Arguments    : $@"
echo "Total No of Arguments  : $#"
echo "Current PID            : $$"
echo "Exit status            : $?"
```

ubuntu@ip-172-31-16-226:~/shell$ ./special_var.sh "my name is chaitanya welcome"
```sh
$0 Script Name: ./special_var.sh                        
$1 First Argument: my                                    
$@ Print all Arguments: my name is chaitanya welcome     
$# Total No of Arguments: 5                              
$$ Current PID: 25285
$? Exit status: 0
```
### 7. /dev/null 
-  It is commonly used in shell scripting to suppress command output or errors.
- output of the command is nullified.
```sh
ubuntu@ip-172-31-16-226:~/shell/scripts$ ls -lrt
total 12
-rw-rw-r-- 1 ubuntu ubuntu 223 Feb 26 09:29 s3-upload.sh
-rw-rw-r-- 1 ubuntu ubuntu 209 Feb 26 10:13 file-creat.sh
-rw-rw-r-- 1 ubuntu ubuntu 155 Feb 27 13:42 check-site.sh
ubuntu@ip-172-31-16-226:~/shell/scripts$ ls -lrt > /dev/null
ubuntu@ip-172-31-16-226:~/shell/scripts$ 
```

### 8. > and >>
**single redirection(>)**
- Redirects output to a file.
- Overwrites the file if it already exists.
- If the file doesn’t exist, it creates a new one.

```sh
echo "hello world" > new.txt
output:
hello world
echo "this is ramu" > new.txt
output:
this is ramu
```
**single redirection(>>)**
- Redirects output to a file.
- Appends to the file instead of overwriting it.
- If the file doesn’t exist, it creates a new one.

```sh
echo "hello world" >> new.txt
output:
hello world
echo "this is ramu" >> new.txt
output:
hello world
this is ramu
```
