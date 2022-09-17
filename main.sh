# demo for Bash script
function hello() 
{
  echo Hello World
}

function cases()
{  
   echo "select:"
   local options="one two three break"
   # demonstrate selection
   select x in $options;
   do
      # demonstrate case;
      case $x in
        (break)      echo "done"; break;;
        (one)        echo "one";;
        (two|three)  echo "other";;     
      esac #end of case
   done #end of select
}

# start main program
echo Bash Demo
echo "-------------------"
menu="exit hello if wile for case"

# display options and prompt
select option in $menu; 
do
  echo "-------------------"
  # jump table like switch
  case $option in
    (exit) echo "goodby"; break;;
    (hello) hello;;
    (case) cases;;
  esac
done

# end of program demo