#!/bin/bash
echo -e "Enter first num: \c"
read num1
echo -e "Enter second num: \c"
read num2
#For integers
echo sum= $(( num1 + num2))
echo sub= $(( num1 - num2 ))
echo mul= $(( num1 * num2 ))
echo div= $(( num1 / num2 ))
echo mod= $(( num1 % num2 ))
#Similarly, we can use expr keyword
echo sum= $( expr $num1 + $num2)
echo sub= $( expr $num1 - $num2 )
echo mul= $( expr $num1 \* $num2 )
echo div= $( expr $num1 / $num2 )
echo mod= $( expr $num1 % $num2 )
#For fractional integers
echo -e "Enter a num: \c"
read num1
echo -e "Enter second num: \c"
read num2
echo -e "sum=\c"
echo "$num1 + $num2"|bc
echo -e "sub=\c"
echo "$num1 - $num2"|bc
echo -e "mul=\c"
echo "$num1 * $num2"|bc
echo -e "div=\c"
echo "scale=2;$num1 / $num2"|bc
echo -e "mod=\c"
echo "$num1 % $num2"|bc #not include scale at mod

echo -e "Enter another num: \c"
read num
echo -e "sqrt of $num= \c"
echo "scale=2;sqrt($num)"|bc -l #-l to define the standard math library
echo -e "square of $num= \c"
echo "scale=2;$num*$num"|bc -l
