# LOOPS IN SHELL SCRIPTING
**1.for loop**
The for loop iterates over a list of items and executes a block of code for each item.
```sh
#!/bin/bash
for i in {1..5}
do 
  echo "number:$i"
done
#######
for name in babu ram subbu
do
  echo "Name is:$name"
done
#####
for j in 1 2 3 4 5 6
do
 echo "number is:$j"
done
```
## Example FOR Loop
```sh
#!/bin/bash
FILE="/home/ubuntu/index.html"
for FILE in $(cat $FILE)
do
   echo "contents of the file is:$FILE"
done
```

**1.while loop**
- The while loop executes a block of code as long as a condition is true.
```sh
#!/bin/bash
count=1
while [ $count -le 5 ] #count is less than equal to 5 
do
    echo "Count: $count"
    count=$((count + 1))   #you can use let "count++"
done
```