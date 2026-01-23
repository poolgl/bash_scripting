<#
Nom: Calculadora de notes amb switch
Descripcio:
Autor: Pol García
Data: 23/01/26
Versió. 1.0
Utilització: Entra un nombre enter al terminal.
#>

#Agafem la variable en nombre enter.
$nota = [int] (Read-Host "Introdueix la nota (nombre enter)")

switch ($nota)
{
    { $_ -le 2 } { Write-Host "D" }
    { $_ -ge 3 -and $_ -le 4 } { Write-Host "C-" }
    { $_ -ge 5 -and $_ -le 6 } { Write-Host "C+" }
    { $_ -ge 7 -and $_ -le 8 } { Write-Host "B" }
    Default { Write-Host "A" }
}