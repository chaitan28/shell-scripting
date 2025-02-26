#1/bin/bash
filepath="/home/ubuntu/shell/new.txt"
if [ -f $filepath ]; then
 echo "file exists"
else
     touch $filepath 
     echo "Hello world" > $filepath
     echo "file created and information added"
fi