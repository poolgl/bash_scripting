#Calculadora de notes amb case
#Data: 21/01/2026
#Version: 1.0
#Author: Pol García López
#!/bin/bash

read -p "Introdueix la nota (nombre enter): " nota

case $nota in
    0|1|2)
        echo "D"
        ;;
    3|4|5|6)
        echo "C"
        ;;
    7|8)
        echo "B"
        ;;
    9|10)
        echo "A"
        ;;
    *)
        echo "Nota no vàlida"
        ;;
esac
