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
echo "printing the first value is ${my_array[0]}"  # Output: apple
echo "printing the second element is ${my_array[1]}"  # Output: banana
echo "printing all the values is ${my_array[@]}"  # Output: apple banana cherry
echo "printing all the arrays is ${my_array[*]}"  # Output: apple banana cherry
echo "length of the array is ${#my_array[@]}"  # Output: 3
echo "values from index 2-3 is ${my_array[*]:2:2}" # output: cherry chaitan, :2:2 → Extracts elements starting from index 2, printing 2 values from index 2.
my_array+=("hero")
echo "printing all the arrays is ${my_array[*]}" 
```
#### Key-value pairs in Arrays
- 
```sh
#!/bin/bash
declare -A myarray
myarray=( [name]=chaitanya [age]=23 [city]=hyder )

echo "my name is ${myarray[name]}"


