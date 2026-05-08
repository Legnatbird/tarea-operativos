#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

while true; do
    echo "Quiz de mates"
    echo
    echo "1. Problema de suma"
    echo "2. Problema de resta"
    echo "3. Problema de multiplicacion"
    echo "4. Problema de division"
    echo "5. Salir"
    echo -n "    Escoge una opcion: "
    read -r opcion

    case "$opcion" in
        1) bash "$SCRIPT_DIR/suma.sh" ;;
        2) bash "$SCRIPT_DIR/resta.sh" ;;
        3) bash "$SCRIPT_DIR/multiplicacion.sh" ;;
        4) bash "$SCRIPT_DIR/division.sh" ;;
        5) echo "Ba bais"; exit 0 ;;
        *) echo "Opcion incorrecta, intenta de nuevo" ;;
    esac
done