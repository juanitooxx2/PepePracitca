#!/bin/bash

read -p "Introduce una cadena de texto: " cadena

longitud=${#cadena}
echo "La cadena tiene $longitud caracteres."

num_palabras=$(echo $cadena | wc -w)
echo "La cadena tiene $num_palabras palabras."

read -p "Introduce una letra para contar cuántas veces aparece: " letra

count_letra=$(echo $cadena | grep -o "$letra" | wc -l)

echo "La letra '$letra' aparece $count_letra veces en la cadena."
