#main demo for Bash script
function hello() 
{
  echo Hello World
}

function selection()
{ 
   echo "sub-menu:"
   local options="one two three break"
   # demonstrate selection
   select x in $options;
   do
      # demonstrate case;
      case $x in
        (break) echo "done"; 
                break;;
        (one)        echo "one";;
        (two|three)  echo "other";;     
      esac #end of case
   done #end of select
}

function decision()
{
  # demo how to deal with Boolean
  a=true
  if $a; then
     echo "0. expected"
  fi
  # test 1: b is defined but later
  if $b; then
     echo "1. unexpected"
  else
     echo "1. expected"
  fi
  # variable b is defined later
  b=false
  # test 2 compare booleans
  if [ $a != $b ]; then
     echo "2. expected"
  else
     echo "2. unexpected"
  fi
  # use quotes to compare strings
  # much safer approach
  if [ "$a" == "$b" ]; then
     echo "3. unexepected"
  else
     echo "3. expected"
  fi
}

# tun a script

# start main program
echo "main menu"
echo "-------------------"
menu="exit hello if while until for case"

# display options and prompt
select option in $menu; 
do
  echo "-------------------"
  # jump table like switch
  case $option in
    (exit) echo "goodby"; break;;
    (hello) hello;;
    (case) selection;;
    (if) decision;;
    # call external script 
    (while) source ./while.sh;;
    (until) source ./until.sh;;
    (for)   source ./for.sh;;
  esac
  echo "-------------------"
done

# end of program demo