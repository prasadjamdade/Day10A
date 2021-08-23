#! /bin/bash


read -p "please enter first numeric input to register: " a;
read -p "please enter second numeric input to register:" b;
read -p "please enter third numeric input to register:" c;

# echo "You successfully registered 3 entries: $a, $b & $c."
float=$(($a/$b));


if [[ $(($a%$b)) == 0 ]]; 
	then
		echo "===================================================================================";
		echo "The answer to the equation(c + a/b) for entered values is: $(($float + $c))";
		echo "===================================================================================";
	else
		echo "===================================================================================";
		echo "The approximate floor value answer to the equation(c + a/b) for entered values is: $(($float + $c))";
		echo "===================================================================================";
fi
