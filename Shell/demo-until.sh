#!/bin/bash

num=0

until [[ ! $num -lt 21	]]

do
	echo $num

	num=$((num+1))

done
