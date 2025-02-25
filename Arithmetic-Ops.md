### Arithmetic Operators
- Arithmetic operations in a shell script can be performed by using different methods like let, (( )).

### Using let
```sh
#!/bin/bash
echo "enter the a value:"
read a
echo "enter the b value:"
read b
let sum=a+b
let diff=a-b
let prod=a*b
let quot=a/b
echo "Sum: $sum, Difference: $diff, Product: $prod, Quotient: $quot"
```
### Using (()) parentheses
```sh
#!/bin/bash
echo "enter the a value:"
read a
echo "enter the b value:"
read b
sum=$((a + b))
diff=$((a - b))
prod=$((a * b))
quot=$((a / b))
echo "Sum: $sum, Difference: $diff, Product: $prod, Quotient: $quot"
```
