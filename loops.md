# LOOPS IN SHELL SCRIPTING
**1.for loop**
- The for loop iterates over a list of items and executes a block of code for each item.
```sh
#!/bin/bash
for i in {1..5}
do 
  echo "number:$i" # for every time i will checked from the top.
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
**Example For Loop**
```sh
#!/bin/bash
FILE="/home/ubuntu/index.html"
for FILE in $(cat $FILE)
do
   echo "contents of the file is:$FILE"
done
```

**2.while loop**
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

**3.Infinite loop**
- An infinite loop runs indefinitely until it is manually interrupted (e.g., using Ctrl+C).
```sh
#!/bin/bash
while true
do
    echo "This is an infinite loop"
    sleep 2
done
```
- From the above code is clear , repeatedly executes a block of code because the condition true always evaluates to true. The sleeps for 1 second and restarts again.
- infinite loop with for 
```sh
#!/bin/bash
for (( ; ; ))
do
    echo "This is an infinite loop"
    sleep 2
done
```

**4.Nested Loops**
- You can nest loops inside one another to create more complex logic
```sh
#!/bin/bash
for i in {1..3}
do 
   for j in {1..2}
   do 
   echo "i:$i, j:$j"
   done
done
```
- For every iteration of outer loop (for i in {1..3}) is executed after completion of inner loop (for j in {1..2}) . code will print 3x2=6 lines
means output:
```sh
i:1, j:1
i:1, j:2
i:2, j:1
i:2, j:2
i:3, j:1
i:3, j:2
```
**5.loops with conditions**
- Break: Exits the loop immediately.
- Continue: Skips the current iteration and moves to the next one
```sh
for i in {1..10}
do
    if [ $i -eq 5 ]
    then
        break
    fi
    echo "Number: $i"
done
```
