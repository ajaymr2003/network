
if [ $# -le 2 ]; then
echo "Syntax: $0 <start_line> <end_line> <file>" exit 1
fi
n1=$1
n2=$2
shift
shift
n3=$(expr $n2 - $n1 + 1)
while [ $# -ne 0 ]; do
echo "File: $1"
head -n $n2 "$1" | tail -n $n3
shift
done
exit 0
