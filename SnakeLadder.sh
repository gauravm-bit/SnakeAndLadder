#!/bin/bash -x

echo "Welcome to snake ladder problem"

#constants
PLAYER=1
NOPLAY=0
SNAKE=1
LADDER=2

#variables
position=0

#dieRoll
dieRoll=$((RANDOM%6+1))
printf "After rolling a die Player gets value $dieRoll"

#options
optionCheck=$((RANDOM%3))
case $optionCheck in
	$NOPLAY)
			 NOPLAY=$(($position+$NOPLAY))
			 ;;
	$SNAKE)
			SNAKE=$(($position-$dieRoll))
			 ;;
	$LADDER)
			LADDER=$(($position+$dieRoll))
			 ;;
esac
