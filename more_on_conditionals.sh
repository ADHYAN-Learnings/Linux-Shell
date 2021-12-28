read a
read b
read c

if [[ $a -eq $b && $b -eq $c ]]
then
echo "EQUILATERAL"
elif [[ $a -eq $b && $b -ne $c ]] || [[ $a -eq $c && $b -ne $c ]] || [[ $b -eq $c && $a -ne $c ]]
then
echo "ISOSCELES" 
else
echo "SCALENE"
fi
