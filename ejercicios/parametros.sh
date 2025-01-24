#!/bin/bash

if [[ $# -ne 3 ]]; then
    echo "Error: Debes proporcionar exactamente tres parámetros: a, b y n."
    exit 1
fi

a=$1
b=$2
n=$3

if [[ $n -le 0 ]]; then
    echo "Error: El parámetro n debe ser un número mayor que 0."
    exit 1
fi


suma_impares=0


for ((i = 1; i <= n; i++)); do
    if ((i % 2 != 0)); then
        suma_impares=$((suma_impares + i))
    fi
done

resultado=$((a * b * suma_impares))

echo "El resultado de la fórmula S = a * b * suma_impares es: $resultado"

