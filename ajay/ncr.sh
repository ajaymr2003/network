if [ $# -ne 2 ]
then
 echo "Syntax is <$0> <n> <r>"
 exit 1
fi
fact() {
  n=$1
  i=1
  p=1
  while [ $i -le $n ]
  do
 p=`expr $p \* $i`
i=`expr $i + 1`
  done
echo $p
}
n=$1
r=$2
nP=$(fact $n)
rP=$(fact $r)
n_rP=$(fact `expr $n - $r`)
den=`expr $rP \* $n_rP`
nCr=`expr $nP / $den`
echo "$n C $r = $nCr"
