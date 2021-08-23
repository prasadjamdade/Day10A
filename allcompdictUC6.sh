#! /bin/bash

for (( i = 0; i < 10 ; i++ )); 
	do
		rannuma=$((RANDOM%100 + 10));
		# echo $rannuma
		rannumb=$((RANDOM%10 + 1));
		rannumc=$((RANDOM%100 + 1));
		vala[$i]=$rannuma;
		valb[$i]=$rannumb;
		valc[$i]=$rannumc;
		comp1[$i]=$(($rannuma + $(($rannumb * $rannumc))));	#(a+b*c)
		comp2[$i]=$(($(($rannuma * $rannumb)) + $rannumc));	#(a*b+c)
		comp3[$i]=$(($(($rannuma/$rannumb)) + $rannumc));		#(a/b +c)
		comp4[$i]=$(($(($rannuma%$rannumb)) + $rannumc));		#(a%b +c)
	done

Dict[a]=${vala[*]}
Dict[b]=${valb[*]}
Dict[c]=${valc[*]}
Dict[c1]=${comp1[*]}
Dict[c2]=${comp2[*]}
Dict[c3]=${comp3[*]}
Dict[c4]=${comp4[*]}

echo "Random values for variable a: (${vala[*]})"
echo "Random values for variable a: (${valb[*]})"
echo "Random values for variable a: (${valc[*]})"
echo "                                               "
echo "=================================================================="
echo "                                               "
echo "Answer to computation (a+b*c) is: (${Dict[c1]})"
echo "                                               "
echo "=================================================================="
echo "                                               "
echo "Answer to computation (a*b+c) is: (${Dict[c2]})"
echo "                                               "
echo "=================================================================="
echo "                                               "
echo "Answer to computation (a/b +c) is: (${Dict[c3]})"
echo "                                               "
echo "=================================================================="
echo "                                               "
echo "Answer to computation (a%b +c) is: (${Dict[c4]})"
echo "                                               "
echo "=================================================================="
echo "                                               "
