#First store the value into a variable
arr=($(cat fileName))
#Replace the first capital letter with a .(dot) and print them
echo ${arr[@]/[A-Z]/.}
