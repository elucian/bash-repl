# simple command substitution in string
echo "Current folder: $(pwd)"

# command substiturion captured in variable
dir=$(ls *.sh)

for file in $dir; do
  echo $file;
done

