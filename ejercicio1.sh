#!/bin/bash

mostrar_menu() {
    echo "1. Cambiar opciones"
    echo "2. Generar contraseña"
    echo "3. Salir"
}

cambiar_opciones() {
    echo "¿Cuántos caracteres debe tener la contraseña?"
    read longitud

    echo "¿Incluir mayúsculas? (Sí/No)"
    read mayusculas

    echo "¿Incluir minúsculas? (Sí/No)"
    read minusculas

    echo "¿Incluir números? (Sí/No)"
    read numeros

    echo "¿Incluir caracteres especiales? (Sí/No)"
    read especiales
}

generar_contrasena() {
    caracteres=""

    if [ "$mayusculas" == "Sí" ]; then
        caracteres="$caracteres$(echo {A..Z})"
    fi
    if [ "$minusculas" == "Sí" ]; then
        caracteres="$caracteres$(echo {a..z})"
    fi
    if [ "$numeros" == "Sí" ]; then
        caracteres="$caracteres$(echo {0..9})"
    fi
    if [ "$especiales" == "Sí" ]; then
        caracteres="$caracteres!@#$%^&*()_-+=<>?"
    fi

    contrasena=""
    for ((i=0; i<$longitud; i++)); do
        random_char=$(echo $caracteres | fold -w1 | shuf | head -n1)
        contrasena="$contrasena$random_char"
    done

    echo "Contraseña generada: $contrasena"
}

# Función principal
main() {
    longitud=12
    mayusculas="Sí"
    minusculas="Sí"
    numeros="Sí"
    especiales="No"

    while true; do
        mostrar_menu
        echo "Selecciona una opción (1-3):"
        read opcion

        case $opcion in
            1)
                cambiar_opciones  
                ;;
            2)
                generar_contrasena  
                ;;
            3)
                echo "Saliendo..."  
                break
                ;;
            *)
                echo "Opción no válida. Intenta de nuevo."
                ;;
        esac
    done
}

main

