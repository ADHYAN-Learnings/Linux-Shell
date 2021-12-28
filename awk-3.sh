awk '{num=($2+$3+$4)/3; if(num>=80) print $0" : A"; else if(num>=60 && num<80) print $0" : B"; else if(num>=50 && num < 60) print $0" : C"; else print $0" : FAIL"}' filename

