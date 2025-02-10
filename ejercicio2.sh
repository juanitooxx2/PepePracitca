#!/bin/bash

mostrar_menu() {
    echo "1. Crear array"
    echo "2. Mostrar array"
    echo "3. Agregar elemento"
    echo "4. Eliminar elemento"
    echo "5. Tamaño del array"
    echo "6. Salir"
}


crear_array() {
    echo "Ingresa los elementos separados por espacio:"
    read -a array
}


mostrar_array() {
    echo "${array[@]}"
}


agregar_elemento() {
    echo "Elemento a agregar:"
    read elem
    array+=("$elem")
}


eliminar_elemento() {
    echo "Índice a eliminar:"
    read idx
    unset array[$idx]
}


main() {
    array=() 

    while true; do
        mostrar_menu
        echo "Selecciona opción (1-6):"
        read opcion

        case $opcion in
            1) crear_array ;;
            2) mostrar_array ;;
            3) agregar_elemento ;;
            4) eliminar_elemento ;;
            5) echo "Tamaño: ${#array[@]}" ;;
            6) echo "Saliendo..."; break ;;
            *) echo "Opción no válida" ;;
        esac
    done
}

main

