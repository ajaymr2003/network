if [ $# -ne 3 ]
then
	echo "enter correct input "
	exit 1
	else
max=$1

if [ $2 -gt $max ]
then 
max=$2
fi

if [ $3 -gt $max ]
then
max=$3
fi

echo "Largest number:" $max
fi
