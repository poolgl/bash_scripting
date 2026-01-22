#ex8
#Data: 16/01/2026
#Version: 1.0
#Author: Pol García López
#!/bin/bash

# Comprovar si s'ha posat el paràmetre
if [ $# -ne 1 ] 
then
    echo "T'has equivocat. Has de posar: $0 nom_directori"
    exit 1
fi

#Comprovar si és un directori
if [ ! -d $1 ]
then
    echo "Aquest argument no és cap directori"
else
    ls -l $1
fi
