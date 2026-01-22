#calc
#Data: 16/01/2026
#Version: 1.0
#Author: Pol García López

#!/bin/bash
read -p "Introdueix el primer nombre" valor1
read -p "Introdueix el segon nombre" valor2

suma=$((valor1 + valor2))
resta=$((valor1 - valor2))
multiplicacio=$((valor1 * valor2))
divisio=$((valor1 / valor2))

echo "Aquests son els resultats de $valor1 i $valor2"
echo "Suma:$suma"
echo "Resta:$resta"
echo "Multiplicació:$multiplicacio"
echo "Divisió:$divisio"
