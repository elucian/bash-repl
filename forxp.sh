# sequence and range
echo $(seq 0 10)
echo $(seq 1 2 20)
echo {1..20..2}
echo {a..c}{1..3}
echo -------------------
# for range expansion
for x in str-{0..9}.sh
do
  echo $x
done