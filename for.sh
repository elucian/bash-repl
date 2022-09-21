echo demo 1
echo using range 1..10
echo -----------------

for i in $(seq 1 10)
do
  echo $i
done

echo ----------------
echo demo 2
echo using ratio 2
echo ----------------

for i in `seq 1 2 10`
do
  echo $i
done
