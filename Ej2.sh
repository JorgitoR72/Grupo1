read -p "Escribe un numero: " numero
resto=$((numero % 2))
if [ $resto -le 0 ]
then
    echo "El valor $numero es par."
else
    echo "El valor $numero es impar."
fi