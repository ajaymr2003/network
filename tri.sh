#given number forms a triangle or not if yes type of triangle
if [ $# -ne 3 ]
then
echo "Syntax is <$0> <no1> <no2> <no3>"
else
a=$1
b=$2
c=$3
if [ $a -gt $c ]
then
t=$a
a=$c
c=$t
fi
if [ $b -gt $c ]
then 
t=$b
b=$c
c=$t
fi
if [ `expr $a + $b` -gt $c ]
then
echo "Triangle can be formed"
if [ $a -eq $b -a $a -eq $c ]
then
 echo " Equilateral triangle"
exit 0
fi
if [ $a -eq $b -o $a -eq $c -o $b -eq $c ]
then
echo "Isocles triangle"
exit 0 
fi
if [ `expr $a \* $a + $b \* $b` -eq `expr $c \* $c` ]
then
echo "Right angled triangle"
exit 0
fi
echo "Normal triangle"
else
echo "Triangle cannot be formed"
fi
fi
