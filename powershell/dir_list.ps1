<#
Nom: Llistar directoris 
Descripcio:
Autor: Pol García
Data: 23/01/26
Versió. 1.0
Utilització: Afegir un directori com a paràmetre.
#>

#Agafem els paràmetres
param (
    $param1
)
#Comprovar si el paràmetre és buit
if ($null -eq $param1) { 
    Write-Host "Error: Has d'afegir una ruta com a paràmetre." -ForegroundColor Red
} 
#Comprovar si és un directori
elseif (Test-Path $param1 -PathType Container) {
    Get-ChildItem $param1  #Llista el contingut del directori.
} 
else {
    Write-Host "Resultat: '$param1' NO és un directori." -ForegroundColor Yellow
}