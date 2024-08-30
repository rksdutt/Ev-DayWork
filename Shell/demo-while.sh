#!/bin/bash


num=0

while [[ $((num%2))==0 && $num -le 20  ]]
do
	echo $num
	num=$((num+3))
done
