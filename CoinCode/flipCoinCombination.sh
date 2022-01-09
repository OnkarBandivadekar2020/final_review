toss=$(($(($RANDOM))%2))
if [ $toss = 1 ]
then
    echo "heads"
else
    echo "tails"
fi
#########################################################

read -p "FLip 2 coins and give the ans: " toss2
if [ $toss2 = 11 ]
then
    echo "Head Head"
elif [ $toss2 = 10 ]
then
	echo "Head Tail"
elif [ $toss2 = 00 ]
then
	echo "Tail Tail"
elif [ $toss2 = 01 ]
then
	echo "Tail Head"
else
    echo "not valid"
fi
#############################################################

read -p "FLip 3 coins and give the ans: " toss3
if [ $toss3 = 111 ]
then
	echo "Head Head Head"
elif [ $toss3 = 110 ]
then
	echo "Head Head Tail"
elif [ $toss3 = 100 ]
then
	echo "Head Tail Tail"
elif [ $toss3 = 000 ]
then
	echo "Tail Tail Tail"
elif [ $toss3 = 001 ]
then
	echo "Tail Tail Head"
elif [ $toss3 = 011 ]
then
	echo "Tail Head Head"
else
    echo "not valid"
fi
###################################################################

echo "Show one coin flip result:  $toss"
echo "Show two coins flip result: $toss2"
echo "SHow three coins flip results: $toss3"
