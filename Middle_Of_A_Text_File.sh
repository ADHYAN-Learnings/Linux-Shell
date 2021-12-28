#! /bin/bash

# head -n 22 --> It means display the 22 number file
# taile -n +12 -> It means display all the lines from 12. So
# head -n 22 | tail -n +12  --> command will display the line between 12 to 22
head -n 22 | tail -n +12
