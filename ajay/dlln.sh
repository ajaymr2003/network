if [ $# -ne 2 ]; then 
echo "Syntax is $0 <file> <word to delete>"
 exit 1 
fi 
if grep -q "$2" "$1"
then 
echo "$2 deleted from $1 succesfully"
grep -v "$2" $1 > temp 
mv temp $1 
else 
echo "error deleting $2 from $1" 
fi 
