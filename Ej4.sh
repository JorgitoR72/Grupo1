dia=0

while true; do
  read -p "Ingresa un valor del día numérico del mes (de 1 a 30): " dia
  if [[ $dia -ge 1 && $dia -le 30 ]]; then
    break
  else
    echo "Valor introducido fuera del rango. Por favor, ingresa un valor entre 1 y 30."
  fi
done

dia_semana=""

case $dia in
  1) dia_semana="Lunes";;
  2) dia_semana="Martes";;
  3) dia_semana="Miércoles";;
  4) dia_semana="Jueves";;
  5) dia_semana="Viernes";;
  6) dia_semana="Sábado";;
  7) dia_semana="Domingo";;
  *) dia_semana="Desconocido";;
esac

echo "El día $dia es $dia_semana."