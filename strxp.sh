# string expansion
echo str{1,2,3}

a=one; b=two; c=three;

echo str-{$a,$b,$c}.sh

# expansion iteration
for x in str-{$a,$b,$c}.sh
do
  echo $x
done