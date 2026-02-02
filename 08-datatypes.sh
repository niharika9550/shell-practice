#!/bin/bash
NUM1=100
NUM2=siva
SUM=$(($NUM1+$NUM2))
echo "SUM=$SUM"
#array
FRUITS=("Apple","mango" "banana")
echo "fruit are :${fruits[@]}"
echo "first fruit is: ${FRUITS[0]}"
echo "second fruit is :${FRUITS[1]}"
echo  "thir fruit is :{FRUITS[2]}"