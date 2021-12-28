# Repeat the value in the same pattern.
# First we are going to store the values into a variable
arr=($(cat filename))
# Repeat arr three times and print it
echo "${arr[@]} ${arr[@]} ${arr[@]}"

