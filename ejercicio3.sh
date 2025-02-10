#!/bin/bash

encriptar_mensaje() {
    echo "Ingresa el mensaje a encriptar:"
    read mensaje
    echo "Ingresa el desplazamiento (número):"
    read desplazamiento

    mensaje_encriptado=""

    for (( i=0; i<${#mensaje}; i++ )); do
        char="${mensaje:$i:1}"

       
        if [[ "$char" =~ [A-Z] ]]; then
            
            codigo=$(( ( $(printf "%d" "'$char") - 65 + desplazamiento) % 26 + 65 ))
            char_encriptado=$(printf "\\$(printf "%03o" $codigo)")

        
        elif [[ "$char" =~ [a-z] ]]; then
           
            codigo=$(( ( $(printf "%d" "'$char") - 97 + desplazamiento) % 26 + 97 ))
            char_encriptado=$(printf "\\$(printf "%03o" $codigo)")

        else
            
            char_encriptado="$char"
        fi

        mensaje_encriptado="$mensaje_encriptado$char_encriptado"
    done

    echo "Mensaje encriptado: $mensaje_encriptado"
}


main() {
    while true; do
        encriptar_mensaje  
        echo "¿Quieres encriptar otro mensaje? (Sí/No):"
        read respuesta
        if [[ "$respuesta" != "Sí" && "$respuesta" != "sí" ]]; then
            echo "Saliendo..."
            break
        fi
    done
}

main

