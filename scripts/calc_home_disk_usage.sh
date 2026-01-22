#Cálcul ocupació de disk del directori home especificat com a paràmetre.
#Data: 21/01/2026
#Version: 1.0
#Author: Pol García López
#!/bin/bash

# Comprovar si s'ha introduit un paràmetre
if [ $# -ne 1 ]; then
  echo "Has d'introduir algun directòri com a paràmetre $0 nom_directori"
  exit 1
fi 
#Comprovar si el directori és vàlid 
if [ ! -d $1 ]; then
  echo "Has d'introduir un directori com a paràmetre"
  exit 1
  else
  du -chs "$1" 2> /dev/null
fi
