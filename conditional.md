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
File exists	            [ -e file ]
File is a directory	    [ -d dir ]
File is a regular file	[ -f file ]
String is empty        	[ -z "$str" ]
String is not empty   	[ -n "$str" ]
```
  
### conditional statements
**1. if Statement:**
```sh
#!/bin/bash

read -p "enter the value:" a

if [ $a -eq 10 ]; then
  echo "value is equal to 10!!"
fi
```

**2. if-else Statement:**
```sh
#!/bin/bash

read -p "enter the value a:" a
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
read -p "enter the marks of the student:" marks
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
echo "Option A for printing all the files in the current directory"
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