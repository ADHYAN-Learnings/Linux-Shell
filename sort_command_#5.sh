#This sort command will sort the values from 2nd number by reverse order by a tab delimiter
# $'\t'  - tab delimiter
# -k2 - 2nd column
# -nr - number in reverse order
# So the command will be sort -t $'\t' -k2 -nr filename.txt

sort -t $'\t' -k2 -nr
