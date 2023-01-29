#!/bin/bash

echo "***************************"
echo "****MENU*******************"
echo "****1)Buscar por título****"
echo "****2)Buscar por año*******"
echo "****3)Buscar por editorial*"
echo "****4)Buscar por género****"
echo "****5)Insertar libro*******"
echo "****6)Salir****************"
echo "***************************"

read -p "Selecciona una opción: " opcion

case $opcion in
    1)
        read -p "Introduce el título a buscar: " titulo
        grep -i "^$titulo" bdlibros.txt
        ;;
    2)
        read -p "Introduce el año a buscar: " anio
        grep -i "^.*;$anio" bdlibros.txt
        ;;
    3)
        read -p "Introduce la editorial a buscar: " editorial
        grep -i "^.*;.*;$editorial" bdlibros.txt
        ;;
    4)
        read -p "Introduce el género a buscar: " genero
        grep -i "^.*;.*;.*;$genero" bdlibros.txt
        ;;
    5)
        ./Ej5.sh
        ;;
    6)
        exit 0
        ;;
    *)
        echo "Opción no válida. Selecciona una opción entre 1 y 6."
        ;;
esac