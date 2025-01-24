#!/bin/bash

numero_aleatorio=$((RANDOM % 50 + 1))

echo "¡Bienvenido al juego! Adivina el número entre 1 y 50."

while true; do
    read -p "Introduce tu intento: " intento
    
    if (( intento < numero_aleatorio )); then
        echo "El número es mayor."
    elif (( intento > numero_aleatorio )); then
        echo "El número es menor."
    else
        echo "¡Felicidades! Has acertado."
        break 
    fi
done
