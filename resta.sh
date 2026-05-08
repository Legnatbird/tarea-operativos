#!/bin/bash

A=$(( RANDOM % 101 ))
B=$(( RANDOM % 101 ))

if [ "$A" -lt "$B" ]; then
    TEMP=$A
    A=$B
    B=$TEMP
fi

CORRECTA=$(( A - B ))

echo
echo "Ejercicio de resta"

intentos=0
while [ $intentos -lt 3 ]; do
    intentos=$(( intentos + 1 ))
    echo -n "¿Cuanto es $A - $B? "
    read -r respuesta

    if [ "$respuesta" -eq "$CORRECTA" ]; then
        echo "¡Correcto!"
        exit 0
    elif [ $intentos -lt 3 ]; then
        echo "Incorrecto, puedes intentar de nuevo"
    fi
done

echo "No mas intentos, la respuesta era: $CORRECTA"