#Nom: Comprovació de fitxer o directori
#Descripcio:Comprovar a través d'un paràmetre si es un fitxer o un directori
#Autor: Pol García
#Data: 23/01/26
#Versió. 1.0
#Utilització: S'ha d'afegir com a paràmetre la ruta que es vulgui comprovar.

#Agafem el paràmetre introduit.
param (
    $param1
)

#Comprovem si es un fitxer o un directori
if (Test-Path $param1 -PathType Leaf) {
    Write-Host "$param1 es un fitxer regular"
} elseif (Test-Path $param1 -PathType Container){
    Write-Host "$param1 es un directori."
} else {
    Write-Host "$param1 no es ni un fitxer ni un directori."
    }