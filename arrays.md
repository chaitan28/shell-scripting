### Arrays
- arrays are used to store multiple values in a single variable.
###  Variables
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
### Declaring an Array/accessing the variables
```sh
#!/bin/bash
my_array=("apple" "banana" "cherry" "chaitan" "hello")
echo "printing the first value is ${my_array[0]}"       # Output: apple
echo "printing the second element is ${my_array[1]}"    # Output: banana
echo "printing all the values is ${my_array[@]}"        # Output: apple banana cherry
echo "printing all the arrays is ${my_array[*]}"        # Output: apple banana cherry
echo "length of the array is ${#my_array[@]}"           # Output: 3
echo "values from index 2-3 is ${my_array[*]:2:2}"      # output: cherry chaitan, :2:2 → Extracts elements starting from index 2, printing 2 values from index 2.
my_array+=("hero")
echo "printing all the arrays is ${my_array[*]}" 
```
#### Key-value pairs in Arrays
- 
```sh
#!/bin/bash
declare -A myarray
myarray=( [name]=chaitanya [age]=23 [city]=hyder )
echo "my age is ${myarray[age]}"
echo "my name is ${myarray[name]}"
```

### Strings and string operations
- A string in shell scripting is a sequence of characters, including letters, numbers, and symbol.
- Variables in shell scripting are used to store and manipulate data
- A string is a sequence of characters enclosed in single (') or double (") quotes
```sh
  var="strings"
 examples:
    1.str="Hello, DevOps!"
    2.c="10" 
    3.a="10" && b="12"
```
```sh
#!/bin/bash
str="Hello, DevOps!"    
echo "$str"
echo "${#str}"              # Output: 13
echo "${str/DevOps/Cloud}"  # string replacement# Output: Hello Cloud
echo "${str^^}"             # HELLO DEVOPS (Uppercase)
echo "${str,,}"             # hello devops (Lowercase)
echo "${str:7:6}"           # Output: DevOps (starts at index 7, length 6)
```
```sh
Explain
echo "${str:7:6}"  # Output: DevOps (starts at index 7, length 6)
 H  e  l  l  o  ,     D  e  v  O  p  s  !
 0  1  2  3  4  5  6  7  8  9 10 11 12 13

```

### user interaction 
- The read command in a shell script is used to take user input.
```sh
#!/bin/bash
echo "Enter your name?"
read name
echo "Hello, $name!"
```
- using variables

```sh
#!/bin/bash
echo "Enter the first value:"
read var1
echo "Enter the second value:"
read var2
echo "First: $var1, Second: $var2"
```