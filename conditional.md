### Comparison Operators
**1. Equal to: -eq or ==:** Checks if two values are equal.<br>
```sh
  [ $num1 -eq $num2 ]      : used for numbers 
  [ $str1 == $str2 ]       : used for strings
```
**2.Not Equal to: -ne or !=:**  Checks if two values are not equal.<br>
```sh
  [ $num1 -ne $num2 ]      : used for numbers 
  [ $str1 != $str2 ]       : used for strings
```
**3.Greater Than: -gt:** Checks if the left operand is greater than the right.<br>
```sh
[ $num1 -gt $num2 ]      
```
**4.Less Than: -lt:** Checks if the left operand is less than the right.<br>
```sh
[ $num1 -lt $num2 ]   
```
**5.Greater Than or Equal to: -ge:** Checks if the left operand is greater than or equal to the right.<br>
```sh
[ $num1 -ge $num2 ]      
```
**6.Less Than or Equal to: -le:** Checks if the left operand is less than or equal to the right.<br>
```sh
[ $num1 -le $num2 ]      
```
**7.others for strings**
```sh
file_name exists	       [ -f file_name ] or [ -e file_name] 
file_name exists         [ ! -f file_name ]
Directory exists	       [ -d dir ]
Directory not exists     [ ! -d dir ]
String is empty        	 [ -z "$str" ]
String is not empty   	 [ -n "$str" ]
```
  
### conditional statements
**1. if Statement:**
```sh
#!/bin/bash

read -p "enter the value:" a # Using -p for User Input (One Variable at a Time). -p will take the input from the user.

if [ $a -eq 10 ]; then
  echo "value is equal to 10!!"
fi
```

**2. if-else Statement:**
```sh
#!/bin/bash

read -p "enter the value a:" a # Using -p for User Input (One Variable at a Time). -p will take the input from the user.
read -p "enter the value b:" b
if [ $a -gt $b ]; then
  echo "value a greater then b"
else
  echo "value a is not greater then b
fi
```

**3.if-elif-else Statement**
```sh
#!/bin/bash
read -p "enter the marks of the student:" marks # Using -p for User Input (One Variable at a Time). -p will take the input from the user.
if [ $marks -ge 90 ]; then
    echo "Grade: A"
elif [ $marks -ge 75 ]; then
    echo "Grade: B"
elif [ $marks -ge 60 ]; then
    echo "Grade: c"
else
    echo "Grade: Fail"
fi
```

**4.case statement**
```sh
#!/bin/bash
echo "Provide the valid option from three options"
echo "Option A for printing all the file_name_name_names in the current directory"
echo "Option B for Checking the current path "
echo "Option C for print date"
read choice
case $choice in
        A)
                 echo "Current directory consists of:"
                  ls -la
                 echo "sucessfull ending"
        ;;
        B)pwd;;
        C)date;;
        *)echo "please provide valid option from above";;
esac
```

**5.AND Operator(&&)**
- Both statements need to be true.
```sh
#!/bin/bash
read -p "what is your age?"     age
read -p "what is your country?" country
if [ $age -ge 18 ] && [ "$country" = "india" ]; 
then
  echo "you can vote"
else
  echo "you cant vote"
fi

```
**6. OR Operator(||)**
- Atleast one statement need to be true.
```sh
#!/bin/bash
read -p "what is your age?"     age
read -p "what is your country?" country
if [ $age -ge 18 ] || [ "$country" = "india" ]; 
then
  echo "you can vote"
else
  echo "you cant vote"
fi
```

**7. OR Operator(||) AND Operator**
- combination of both Operators
```sh
command1 && command2 || command3
```
- If command1 succeeds, command2 will run
- If command1 fails, command3 will run
- If command1 suceeds, command2 fails then command3 runs

```sh
#!/bin/bash
read -p "enter your age:" age
[ $age -ge 18 ] && echo "your major" || echo "your minor"
```

```sh
read -p "enter your age:" age
read -p "enter your country:" country
[ $age -ge 18 ] &&  [ $country == india ] || echo "you can vote"
```

### Error handling
- Exit codes are used to indicate the status of the script’s execution. In Bash, exit codes range from 0 to 255:
```sh
0: Indicates success.
1-255: Indicates an error or specific conditions.
```
```sh
#!/bin/bash
mkdir -p /tmp/new/one
if [ $? -ne 0 ]; then
  exit 1
fi
# if  mkdir fails, exit 1 is triggered.
```