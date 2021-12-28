# First we will put all the values of a text into a variable array 
arr=($(cat fileName.txt))
# then we will filter the array with patterns and print them
echo ${arr[@]/*[aA]*/}

