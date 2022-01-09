array=('2' '7' '5' '9' '0')
sort=0
echo ${array[@]}
len=${#array[@]}
echo $len


for ((i=0; i<$len; i++))
do
    for((j=i+1; j<$len; j++))
    do
        if [ ${array[i]} -le ${array[j]} ]
        then
            continue
        else
            sort=${array[i]}
            array[i]=${array[j]}
            array[j]=$sort
        fi
    done
done
echo ${array[@]}