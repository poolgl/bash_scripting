#Nom: Parámetres
#Descripcio: Simple calculator
#Autor: Pol García
#Data: 23/01/26
#Versió. 1.0

Write-host "Calculadors: ¡Només es poden afegir nombres enters!"

#Demanem la introducció de dades i definim les variables com a nombres enters.
[int]$1 = Read-Host "Introdueix el primer nombre"
[int]$2 = Read-Host "Introdueix el segon nombre"


#Calcul de les operacions.
$suma = $1 + $2
$resta = $1 - $2
$multiplicacio = $1 * $2
$divisio = $1 / $2

#Mostrem per pantalla els resultats.
Write-Host "Suma: $suma"
Write-Host "Resta: $resta"
Write-Host "Multiplicació: $multiplicacio"
Write-host "Divisió: $divisio"
