#!/bin/bash -x

echo "Welcome to snake ladder problem"

#constants
PLAYER=1
NOPLAY=0
SNAKE=1
LADDER=2

#variables
position=0


#options
while(( $position < 100 ))
do
	dieRoll=$((RANDOM%6+1))
	optionCheck=$((RANDOM%3))
	case $optionCheck in
		$NOPLAY)
				 position=$(($position+$NOPLAY))
				 ;;
		$SNAKE)
				position=$(($position-$dieRoll))
				if (( position < 0 ))
				then
					position=0
				fi
				 ;;
		$LADDER)
				position=$(($position+$dieRoll))
				 ;;
	esac

done
