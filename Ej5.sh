#!/bin/bash

echo "Introduce el título del libro:"
read titulo
echo "Introduce el año del libro:"
read anio
echo "Introduce la editorial del libro:"
read editorial
echo "Introduce el género del libro:"
echo "1) Ficción"
echo "2) No ficción"
echo "3) Terror"
echo "4) Romance"
echo "5) Aventura"
read genero

case $genero in
  1) genero="Ficción";;
  2) genero="No ficción";;
  3) genero="Terror";;
  4) genero="Romance";;
  5) genero="Aventura";;
  *) echo "Opción inválida. Saliendo del script."; exit;;
esac

echo "$titulo,$anio,$editorial,$genero" >> bdlibros.txt
echo "Libro añadido correctamente."