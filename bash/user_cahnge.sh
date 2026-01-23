#Llistat i canvi d'usuari
#Data: 21/01/2026
#Version: 1.0
#Author: Pol García López
#!/bin/bash

#Llistar usuaris que tenen bash (els que poden iniciar sessió)
echo "Usuaris disponibles:"
grep "/bin/bash" /etc/passwd | cut -d: -f1
read -p "Amb quin usuari vols entrar? " usuari
#Comprovar si existeix i canviar d'usuari.
if id "$usuari" &>/dev/null; then
    su - "$usuari"
else
    echo "L’usuari no existeix"
fi
