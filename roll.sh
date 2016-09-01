# A simple script, you give this script any number of digits
#  and for each digit, it generates a number 1-that number

OUTPUT=""

if [ -z "$1" ]; then
echo "Usage: each arg gets a number generated from 1-that number."
echo "e.g. to roll three 6-sided dice:"
echo "bash roll.sh 6 6 6"
fi

for ROLL in "$@"
do
OUTPUT="$OUTPUT $(($[ $RANDOM % $ROLL] + 1))"
done

echo $OUTPUT
