#In this shell script we will first put all all the values row wise in an array from file.
# arr=($(cat fileName))
# After that we will print the value from 3rd position to 7th position
# so from 3rd position you want to print 7-3 + 1 = 5 values. so unix command will be
#Syntax echo ${arr[@]:position:count}
# echo ${arr[@]:3:5}
arr=($(cat))
echo ${arr[@]:3:5}

