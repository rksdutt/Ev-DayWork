#!/bin/bash

# Here we going to mentioned and applying them in script


<< task
 1 is argument 1 which is folder name
 2 is start range
 3 is end range
task



for (( num=$2 ; num<=$3; num++ ))
do
	mkdir "$1$num"
done
