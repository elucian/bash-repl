#import external functions
source ./functions.sh

# call sum and exp
for x in {1..5}
do
  s=$(sum $x 2);
  echo "sum($x,2) = $s"
  e=$(exp $x 2); 
  echo "exp($x,2) = $e"
  echo
done