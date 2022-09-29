# Search file by name
read -p "Search file:" file

# with continuation symbol "\"
[[ -f "$file" ]] && \
  echo "Found" ||   \
  echo "Not found"

# with conditional
if [[ -e "$file" ]]
then
   echo "file exist"
else
   echo "file do not exist"
fi