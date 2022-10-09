# convert a numberto binary 32
# c=$(echo "obase=2;$n" | bc)

if (($# != 1)); then
  # channel 2 is for errors
  echo "fail: no param given" number >&2
  exit 1 
fi
# control variables
declare -a bin
declare -i i=31
# establish sign
if (( $1<0 )) 
then 
  bin[0]=1 
  let n=-$1
else
  let n=$1
  bin[0]=0 
fi
# add 1 when is due
while (( $n > 0 ))
do
   let r=$n%2
   let n=$n/2 
   bin[i]=$r
   (( i-- ))
   if ((i<0)); then
      echo "error" >&2
      break
   fi
done
for j in $(seq 1 $i)
do
  bin[$j]=0
done
# output all digits
echo -n "2#"
for d in ${bin[@]} 
do
  echo -n $d
done
echo
# done conversion