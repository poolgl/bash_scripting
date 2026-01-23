#Nom: Parámetres
#Descripcio: Printar els parametres afegits al executar l'script.
#Autor: Pol García
#Data: 23/01/26
#Versió. 1.0

#Definim les variables dels paràmetres
param (
    $a,
    $b,
    $c
    )

#Printem per pantalla el valor de les variables anteriors.
Write-Host "Valor del primer paràmetre del script: $a"
Write-Host "Valor del segon paràmetre del script: $b"
Write-Host "Valor del tercer paràmetre del script: $c"