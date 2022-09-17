echo Old style menu
echo "-------------------"
echo "0 - exit"
echo "1 - hello"
echo "2 - decision"
echo "-------------------"

function hello() 
{
  echo Hello World
}

function decision()
{
  # demo how to deal with Boolean
  echo "enter two numbers x, y"
  read -p "x =" x
  read -p "y =" y
  # this is hard to explain
  if (( $x>$y )); then
     echo "x > y"
  elif (( $x<$y )); then
     echo "x < y"
  else
     echo "x = y"
  fi
}

# start menu
option=9
while (($option)) 
do
  read -p ":>" option
  case $option in
    (0) echo "goodby";;
    (1) hello;;
    (2) decision;;
  esac
done