

if [ $# -lt 2 ]; then
echo "Syntax is: $0 <file1> <file2> "
exit 1
fi
r=`expr $# % 2`
if [ $r -ne 0 ]; then
echo "Error: File names must be provided in pairs."
exit 1
fi
while [ $# -ne 0 ]; do
    cp "$1" "$2"
    echo "Copied '$1' to '$2'"
    shift
    shift
done

exit 0
