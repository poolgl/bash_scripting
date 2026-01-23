<#
Nom:Mark calculator
Descripcio: Mark calculator
Autor: Pol García
Data: 23/01/26
Versió. 1.0
Utilització: Afegeix una nota numerica i la passara a nota en letra
#>

#Agafem la variable en nombre enter.
$nota = [int] (Read-Host "Introdueix la nota (nombre enter)")

if ($nota -le 2) {
    Write-Host "D"
}
elseif ($nota -ge 3 -and $nota -le 4) {
    Write-Host "C-"
}
elseif ($nota -ge 5 -and $nota -le 6) {
    Write-Host "C+"
}
elseif ($nota -ge 7 -and $nota -le 8) {
    Write-Host "B"
}
else { 
    Write-Host "A"
}
