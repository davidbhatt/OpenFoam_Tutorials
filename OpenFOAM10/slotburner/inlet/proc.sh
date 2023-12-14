f=$1
rep=$2
op="output.txt"

rm -f $op
touch $op
sed -n '/(/q;p' $f |head -n -1 >>$op

## add no of points
nopoints=`awk '/inlet/ {p=1} /)/ {p=0} p' ../0/Cy |awk 'NR==5 {print}'`
echo $nopoints >>$op
echo "(">>$op
cat $rep >>$op
sed -n '/)/,$p' $f>>$op
cat $op
