#First we will accept the total array length
read length
#After that we will store all the value  into an array
arr=($(arr))
#after that iterate the value in for loop and calculate with the help of bitwise xor to find uniq value
result=0
for i in ${arr[@]}
do
	result=$((result ^ i))
done
echo $result
