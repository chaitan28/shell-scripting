### Comparison Operators
**1. Equal to: -eq or ==:**[ $a -eq $b ] Checks if two values are equal.<br>

**2.Greater Than or Equal to: -ge:** [ $a -ge $b ] Checks if the left operand is greater than or equal to the right.<br>

**3.Less Than or Equal to: -le:** [ $a -le $b ] Checks if the left operand is less than or equal to the right.<br>

**4.Not Equal to: -ne or !=:** [ $a -ne $b ] Checks if two values are not equal.<br>

**5.Greater Than: -gt:** [ $a -gt $b ] Checks if the left operand is greater than the right.<br>

**6.Less Than: -lt:** [ $a -lt $b ] Checks if the left operand is less than the right.<br>

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