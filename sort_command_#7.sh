#This sort command will sort the values from 2nd number by reverse order by a pipe("|") delimiter
# "|"  - pipe delimiter
# -k2 - 2nd column
# -nr - number in reverse order
# So the command will be sort -t $'\t' -k2 -nr filename.txt

sort -t "|" -k2 -nr
