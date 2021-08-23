#! /bin/bash


read -p "please enter first numeric input to register: " a;
read -p "please enter second numeric input to register:" b;
read -p "please enter third numeric input to register:" c;

# echo "You successfully registered 3 entries: $a, $b & $c."

echo "===================================================================================";
echo "The answer to the equation(a % b + c) for entered values is: $(($(($a%$b)) + $c))";
echo "===================================================================================";
