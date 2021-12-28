#This sort command will sort the values from 2nd number by ascending order by a tab delimiter
#NOTE : By default sort command will sort the value in ascending order.
# $'\t'  - tab delimiter
# -k2 - 2nd column
# -n -  number
# So the command will be sort -t $'\t' -k2 -n filename.txt

sort -t $'\t' -k2 -n
