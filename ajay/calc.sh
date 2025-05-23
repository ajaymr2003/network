#simple calculator
if [ $# -ne 3 ]
then
echo "syntax is <$0> <no1> [operator] <no2>"
else
case $2 in
+) sum=`expr $1 + $3`;;
-) sum=`expr $1 - $3`;;
x|X) sum=`expr $1 \* $3`;;
%) sum=`expr $1 % $3`;;
/) sum=`expr $1 / $3`;;
*) echo "Invalid operator";;
esac
echo $sum
fi
