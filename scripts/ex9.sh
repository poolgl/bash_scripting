#Calculadora de notes
#Data: 16/01/2026
#Version: 1.0
#Author: Pol García López
#!/bin/bash

read -p "Introdueix la nota (nombre enter): " nota

if [$nota -lt 0] || [$nota -gt 10]; then
  echo "Error introdueix una nota 0-10"
  exit 1
#Poner menor o igual q 2
if [[ $nota -eq 0 || $nota -eq 1 || $nota -eq 2 ]]; then
    echo "D"
elif [[ $nota -eq 3 || $nota -eq 4 ]]; then
    echo "C"
elif [[ $nota -eq 5 || $nota -eq 6 ]]; then
    echo "C+"
elif [[ $nota -eq 7 || $nota -eq 8 ]]; then
    echo "B"
#El else puede ser que directamente te diga que es una a, es decir como ya no hay mas, pero si falla pasa a ser directamente un aprovado, porque es el default.
elif [[ $nota -eq 9 || $nota -eq 10 ]]; then
    echo "A"
else
    echo "Nota no vàlida"
fi
