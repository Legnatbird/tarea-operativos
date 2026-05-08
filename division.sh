#!/bin/bash

A=$(( RANDOM % 20 + 1 ))
B=$(( RANDOM % 10 + 1 ))
A=$(( A * B ))
CORRECTA=$(( A / B ))

echo
echo "Ejercicio de division"

intentos=0
while [ $intentos -lt 3 ]; do
    intentos=$(( intentos + 1 ))
    echo -n "¿Cuanto es $A / $B? "
    read -r respuesta

    if [ "$respuesta" -eq "$CORRECTA" ]; then
        echo "¡Correcto!"
        exit 0
    elif [ $intentos -lt 3 ]; then
        echo "Incorrecto, puedes intentar de nuevo"
    fi
done

echo "No mas intentos, la respuesta era: $CORRECTA"