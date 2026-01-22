#comprovardor de fitxers
#Data: 16/01/2026
#Version: 1.0
#Author: Pol García López
#!/bin/bash

# Comprovar si s'ha posat el paràmetre
if [ $# -ne 1 ] 
then
    echo "T'has equivocat. Has de posar: $0 nom_fitxer"
    exit 1
fi

# Comprovar si el que han posat és un fitxer
if [ -f $1 ] 
then

    echo "$1 és un fitxer normal"
else
    echo "$1 no existeix o és una carpeta"
fi
