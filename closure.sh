# try to declare a higher order function
declare -x OUTER_FUNC=Outer_Function() {
  local a=1
  
  local inner_result=Inner_Function() {
    alert(a)
  }
  return inner_result
}

foo="$(OUTER_FUNC)"
echo "$foo"
