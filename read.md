### What is a shell?
A shell is a command-line interpreter that allows you to interact with the operating system. Common shells include: <br>

 **Bash (Bourne Again Shell):** Most widely used.<br>
 **Sh (Bourne Shell):** Basic shell.<br>
 **Zsh, Ksh, etc.**
**Example**<br>
Hello World" script.sh
```sh
#!/bin/bash
echo "Hello, World!"
```
Make the script executable
```sh
chmod +x script.sh
```
Run the script
```sh
./script.sh  or sh script.sh
```





















### AWK COMMAND
```sh
aws s3 ls | awk -F " " '{print $1,$2}'
```
- The second command ( Sets the field delimiter as a space.)(-F " ") is much more practical for parsing the aws s3 ls output because it separates fields like date, time, size, and name.<br>
```sh
2025-01-22 10:00:00
2025-01-21 14:30:00
```
- only use chmod 700 file.txt <br>
- Not to use chmod 755 file.txt (4: Read, 2: Write , 1: Execute # owner, group, others) <br>
