### 1. Defining Variables
variables are used to store data that can be used and manipulated throughout the script
- Variables are defined using the = operator, with no spaces around it.
- Variable names can contain letters, numbers, and underscores, but they cannot start with a number.
```sh
name="John"
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
4. Assigning Command Output to a Variable
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
echo "Script Name: $0"
echo "First Argument: $1"
echo "All Arguments: $@"
echo "Total No of Arguments: $#"
echo "Current PID: $$"
echo "Exit status: $?"
```

ubuntu@ip-172-31-16-226:~/shell$ ./special_var.sh "my name is chaitanya welcome"
```sh
Script Name: ./special_var.sh
First Argument: my
All Arguments: my name is chaitanya welcome
Total No of Arguments: 5
Current PID: 25285
Exit status: 0
```