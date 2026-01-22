#!/bin/bash
# Data: 21/01/2026
# Version: 1.0
# Author: Pol García López

# 1. Control de paràmetres
if [ $# -ne 1 ]; then
    echo "Falta el fitxer CSV com a paràmetre"
    exit 1
fi

FITXER=$1
LOG="logs.txt"

# 2. Control de fitxer (que existeixi)
if [ ! -f "$FITXER" ]; then
    echo "Error: El fitxer $FITXER no existeix"
    exit 1
fi

# 3. Lectura i processament
while IFS=',' read -r usuari shell home password email; do

    # Saltem línies buides per evitar errors
    [ -z "$usuari" ] && continue

    if id "$usuari" &>/dev/null; then
        echo "Usuari $usuari ja existent al sistema"
        echo "Usuari $usuari ja existent al sistema" >> $LOG
    else
        # Creem l'usuari
        useradd -m -d "$home" -s "$shell" -c "$email" "$usuari" &>/dev/null
        
        if [ $? -eq 0 ]; then
            echo "Usuari $usuari donat d’alta al sistema"
            echo "Usuari $usuari donat d’alta al sistema" >> $LOG
        else
            echo "Error en crear l'usuari $usuari"
            echo "Error en crear l'usuari $usuari" >> $LOG
        fi
    fi

done < "$FITXER"
