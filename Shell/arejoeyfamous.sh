#!/bin/bash
#
#
<< disclaimer

This is Just for 
Personality 
Check Purpose

disclaimer



read -p "Enter the profession Joey wanna Join : " Proffession

read -p "Enter the Skill % again : " Skill

if [[ $Proffession == Acting ]];
   [[ $Skill -lt 90 ]];

then
        echo "Joey bring his career on Acting Field"


elif [[ $Skill -gt 90 ]];

then

        echo "Joey Became a Public Figure"

else

        echo "Joey Is Working Hard to Become a Public Figure"
fi
