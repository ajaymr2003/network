if [ $# -gt 1 ]
then
echo " error input "
exit 1
fi
flag=0
if [ $# -eq 1 ]
	then
	term='tty'
	exec<$1
	flag=1
fi
while read line
	do
	nol='expr $nol +1'
	set $line>/dev/null
	nowords='expr $nowords+$#'
done	
echo "Number of lines=$nol"
echo "NUmber of word=$nowords"
if [ $flag -eq 1 ]
then
exec<$term
fi
exit 0 
