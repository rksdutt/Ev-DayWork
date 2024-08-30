#!/bin/bash


create_dir() {

	mkdir demo

}

if ! create_dir; then
	echo "The code is executed as well as dir already exists"
	exit 1
fi


echo "this shouldn't work because the code is broken"
