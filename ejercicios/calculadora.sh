#!/bin/bash


mostrar_menu() {
    echo "Seleccione una operación:"
    echo "a. Suma"
    echo "b. Resta"
    echo "c. Multiplicación"
    echo "d. División"
    echo "e. Potencia"
    echo "f. Módulo"
    echo "g. Salir"
}


calculadora() {
    while true; do
        mostrar_menu
        read -p "Ingrese una opción: " opcion

        if [[ "$opcion" == "g" ]]; then
            echo "Saliendo del programa. ¡Hasta luego!"
            break
        fi

       
        read -p "Ingresa el primer número: " num1
        read -p "Ingresa el segundo número: " num2

     
        case $opcion in
            a)
                suma=$((num1 + num2))
                echo "La suma de $num1 y $num2 es: $suma"
                ;;
            b)
                resta=$((num1 - num2))
                echo "La resta de $num1 y $num2 es: $resta"
                ;;
            c)
                multiplicacion=$((num1 * num2))
                echo "La multiplicación de $num1 y $num2 es: $multiplicacion"
                ;;
            d)
                if [[ "$num2" -eq 0 ]]; then
                    echo "Error: No se puede dividir entre cero."
                else
                    division=$((num1 / num2))
                    echo "La división de $num1 entre $num2 es: $division"
                fi
                ;;
            e)
                potencia=$((num1 ** num2))
                echo "El resultado de $num1 elevado a la potencia de $num2 es: $potencia"
                ;;
            f)
                if [[ "$num2" -eq 0 ]]; then
                    echo "Error: No se puede calcular el módulo con divisor cero."
                else
                    modulo=$((num1 % num2))
                    echo "El módulo de $num1 entre $num2 es: $modulo"
                fi
                ;;
            *)
                echo "Opción inválida. Por favor, intente nuevamente."
                ;;
        esac

        echo 
    done
}


calculadora

