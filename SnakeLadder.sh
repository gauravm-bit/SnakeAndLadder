#!/bin/bash -x

echo "Welcome to snake ladder problem"

#constants
PLAYER1=1
PLAYER2=2
NOPLAY=0
SNAKE=1
LADDER=2

#variables
position1=0
position2=0
count1=0
count2=0
index=1


#options

while(( position1 < 100 && position2 < 100 ))
do
	for(( player = PLAYER1; player <= PLAYER2; player++ ))
	do
		if (( player == 1 ))
		then
			dieRoll=$((RANDOM%6+1))
			optionCheck=$((RANDOM%3))
			count1=$(($count1+1))
			case $optionCheck in
				$NOPLAY)
						 position1=$(($position1+$NOPLAY))
						 ;;
				$SNAKE)
						position1=$(($position1-$dieRoll))
						if (( position1 < 0 ))
						then
							position1=0
						fi
				   	;;
				$LADDER)
						position1=$(($position1+$dieRoll))
						if (( position1 > 100 ))
						then
							position1=$(($position1-$dieRoll))
						fi
				 		;;
			esac
		else
			dieRoll=$((RANDOM%6+1))
         optionCheck=$((RANDOM%3))
         count2=$(($count2+1))
         case $optionCheck in
            $NOPLAY)
                   position2=$(($position2+$NOPLAY))
                   ;;
            $SNAKE)
                  position2=$(($position2-$dieRoll))
                  if (( position2 < 0 ))
                  then
                     position2=0
                  fi
                  ;;
            $LADDER)
                  position2=$(($position2+$dieRoll))
                  if (( position2 > 100 ))
                  then
                     position2=$(($position2-$dieRoll))
                  fi
                  ;;
			esac
		fi
	done
done
if (( position1 == 100 ))
then
	echo "Player 1 has won"
else
	echo "Player 2 has won"
fi
