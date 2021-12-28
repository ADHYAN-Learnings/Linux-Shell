#!/bin/bash

declare -A tree

read n
iterationNumber=16

declare -A nodeRow
declare -A nodeColumn

declare -A leavesRow
declare -A leavesColumn

nodeRowIterator=0
nodeColumnIterator=0

nodeRow[0]=64
nodeColumn[0]=50


leavesRowIterator=0
leavesColumnIterator=0


for ((i=1;i<=63;i++))
do
  for ((j=1;j<=100;j++))
  do
   tree[$i,$j]='_'
  done
done  

for ((i=1;i<=n;i++))
do

  for arrayValue in ${!nodeRow[@]};
  do

     startRow=${nodeRow[$arrayValue]}
     startColumn=${nodeColumn[$arrayValue]}

   for ((j=1;j<=iterationNumber;j++))
   do
      let startRow=startRow-1
      tree[$startRow,$startColumn]=1
      if [ $j -eq $iterationNumber ]
      then
       leavesRow[$leavesRowIterator]=$startRow
       leavesColumn[$leavesColumnIterator]=$startColumn

       let leavesRowIterator++
       let leavesColumnIterator++
       fi

   done

  done


   unset nodeRow
   unset nodeColumn

   nodeRowIterator=0
   nodeColumnIterator=0

for arrayValue in ${!leavesRow[@]};
 do
   count=1
   startRow=${leavesRow[$arrayValue]}
   startColumn=${leavesColumn[$arrayValue]}

   while [ "$count" -le 2 ]
   do
   tempDataRow=$startRow
   tempDataColumn=$startColumn

     for ((j=1;j<=iterationNumber;j++))
     do

     let tempDataRow-=1
        if (( $count % 2 != 0 ))
        then
        let tempDataColumn-=1
        else
        let tempDataColumn+=1
        fi
     tree[$tempDataRow,$tempDataColumn]=1
     if [ $j -eq $iterationNumber ]
     then
       nodeRow[$nodeRowIterator]=$tempDataRow
       nodeColumn[$nodeColumnIterator]=$tempDataColumn

       let nodeRowIterator++
       let nodeColumnIterator++
     fi
     done

   let count++
   done
 done
 let iterationNumber/=2
 leavesRowIterator=0
 leavesColumnIterator=0
 unset leavesRow
 unset leavesColumn
done


for ((i=1;i<=63;i++))
do
   for ((j=1;j<=100;j++))
   do
    echo -ne ${tree[$i,$j]}
   done
  echo 
done
