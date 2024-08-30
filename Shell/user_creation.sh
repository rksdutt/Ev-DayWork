#!/bin/bash
#
#
read -p "Enter Username : " Username

echo "You Entered $Username"


sudo useradd -m $Username

echo "A New User added just now"
