#!/bin/bash

if [ -z $1 ] || [ $1 -le 0 ]; then
echo "Uso: $0 numero (donde numero es un valor mayor que 0)"
exit 1
fi

for i in $(seq 0 $1); do
  echo $i
done