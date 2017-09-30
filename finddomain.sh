WORDS=$(wc -m bread | grep -o -P "\d+")
CHARS=${WORDS}

for c in $(eval echo "{1..$CHARS}" )
do
  TLD=$(tail -c $c bread)
  TC=$TC\(\^${TLD}\$\)\|
done

GP=${TC:0:-1}
grep -P "$GP" TLDs.txt
#echo $GP
