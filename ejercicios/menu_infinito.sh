#!/bin/bash

mostrar_menu() {
    echo "\nSeleccione una opción:"
    echo "a. Calcular la suma de los números del 1 al 100"
    echo "b. Mostrar la tabla de multiplicar de un número"
    echo "c. Verificar si un archivo existe y tiene permisos de lectura/escritura"
    echo "d. Salir"
}


calcular_suma() {
    suma=0
    for ((i = 1; i <= 100; i++)); do
        suma=$((suma + i))
    done
    echo "\nLa suma de los números del 1 al 100 es: $suma"
}


mostrar_tabla() {
    read -p "\nIngrese un número para mostrar su tabla de multiplicar: " numero
    echo "\nTabla de multiplicar del $numero:"
    for ((i = 1; i <= 10; i++)); do
        echo "$numero x $i = $((numero * i))"
    done
}


verificar_archivo() {
    read -p "\nIngrese la ruta del archivo: " archivo
    if [[ -e "$archivo" ]]; then
        echo "\nEl archivo '$archivo' existe."
        if [[ -r "$archivo" && -w "$archivo" ]]; then
            echo "El archivo tiene permisos de lectura y escritura."
        else
            echo "El archivo no tiene permisos completos de lectura y escritura."
        fi
    else
        echo "\nEl archivo '$archivo' no existe."
    fi
}

# Función principal
menu_infinito() {
    while true; do
        mostrar_menu
        read -p "\nIngrese una opción: " opcion

        case $opcion in
            a)
                calcular_suma
                ;;
            b)
                mostrar_tabla
                ;;
            c)
                verificar_archivo
                ;;
            d)
                echo "\nSaliendo del programa. ¡Hasta luego!"
                break
                ;;
            *)
                echo "\nOpción inválida. Por favor, seleccione una opción válida."
                ;;
        esac

       
        echo
    done
}

menu_infinito

