#!/bin/bash
echo "Ingresa el primer numero para sumar:"
read num1

echo "Ingresa el segundo numero para sumar:"
read num2
suma=$((num1+num2))
echo "La suma de $num1 y $num2 es: $suma"


echo "Ingresa el primer numero para restar:"
read num1

echo "Ingresa el segundo numero para restar:"
read num2
resta=$((num1-num2))
echo "La resta de $num1 y $num2 es: $resta"


echo "Ingresa el primer numero para multiplicar:"
read num1

echo "Ingresa el segundo numero para multiplicar:"
read num2
multiplicacion=$((num1*num2))
echo "La multiplicacion de $num1 y $num2 es: $multiplicacion"


echo "Ingresa el primer numero para dividir:"
read num1

echo "Ingresa el segundo numero para dividir:"
read num2
division=$((num1/num2))
echo "La division de $num1 y $num2 es: $division"
