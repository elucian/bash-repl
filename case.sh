function run
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

run