#!/bin/bash -x

echo "Welcome to snake ladder problem"

#constants
PLAYER=1

#variables
position=0

dieRoll=$((RANDOM%6+1))

printf "After rolling a die Player gets value $dieRoll"

