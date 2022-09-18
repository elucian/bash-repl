function run()
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

run;