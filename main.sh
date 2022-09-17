# demo for Bash
echo Bash Demo
echo "-------------------"
echo "0 - exit"
echo "1 - hello"
echo "2 - selection"
echo "3 - for loop"
echo "-------------------"

option=9

function hello() 
{
  echo Hello World
}

function selection()
{  
   echo "select:"
   local op="one two three break"
   # demonstrate selection
   select x in $op;
   do
      # demonstrate conditional;
      case $x in
        (break) echo "done"; break;;
        (one)   echo "one";;
        (two|three)  echo "other";;     
      esac
   done #select
}

# start menu
while (($option)) 
do
  read -p ":>" option
  case $option in
    (0) echo "goodby";;
    (1) hello;;
    (2) selection;;
  esac
done