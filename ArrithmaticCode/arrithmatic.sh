#Write program to take three inputs – a, b & c
#start

read -p "Give the Value to a: " a
read -p "Give the Value to b: " b
read -p "Give the Value to c: " c

#End
#Write program to take three inputs – a, b & c - Complete

#####################################################################

#Compute a + b * c
#Start

	arrithmaticOperation=( "$a" "$b" "$c" )
	echo "Compute a + b * c"
		output1=$(($a+$b*$c))
		echo "The Output is '$output1'."
#End
#Compute a + b * c - Complete

#####################################################################

#Compute a * b + c
#Start

	echo "Compute a * b + c"
		output2=$(($a*$b+$c))
		echo "The Output is '$output2'."
#End
#Compute a * b + c - Complete

#####################################################################

#Compute c + a / b
#Start

	echo "Compute c + a / b"
		output3=$(($c+$a/$b))
		echo "The Output is '$output3'."

#End
#Compute c + a / b - Complete

#####################################################################

#Compute a % b + c
#Start

	echo "Compute a % b + c"
		output4=$(($a%$b+$c))
		echo "The Output is '$output4'."
#End
#Compute a % b + c - Complete

#####################################################################

#Array

#Sort the results to show the Computation Result in the Descending Order
#Start

results=("$output1" "$output2" "$output3" "$output4")
sort=0
echo "Final Results are: "${results[@]}
num=${#results[@]}
echo "Total Numbers : "$num

	for ((i=0; i<$num; i++))
	do
		for((j=i+1; j<$num; j++))
			do
				if [ ${results[i]} -ge ${results[j]} ]

			then
				continue
				else
					sort=${results[i]}
					results[i]=${results[j]}
					results[j]=$sort
				fi
			done
			
	done
echo "Sort the Result in Descending Order: " ${results[@]}

#End
#Sort the results to show the Computation Result in the Descending Order - Complete

#########################################################################

#Sort the results to show the Computation Result in the Ascending Order
#Start


	for ((i=0; i<$num; i++))
	do
		for((j=i+1; j<$num; j++))
			do
				if [ ${results[i]} -le ${results[j]} ]
			then
				continue
				else
					sort=${results[i]}
					results[i]=${results[j]}
					results[j]=$sort
				fi
			done
	done
echo "Sort the Result in Ascending Order: " ${results[@]}

#End
#Sort the results to show the Computation Result in the Ascending Order - Complete

#########################################################################