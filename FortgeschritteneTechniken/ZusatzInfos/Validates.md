# Möglichkeiten der Parameter Validierung 

Die PowerShell bietet verschiedene Methoden mit denen die Eingabe von Parametern auf Ihre Gültigkeit validiert werden können. Wichtig zu wissen ist hierbei das diese Validates "sticky" zu den Variablen sind. Das heißt auch im Skript können keine ungültigen Werte gesetzt werden. Außer bei der Initialisierung der Variable innerhalb des Parameters.

1. ValidateSet
```powershell
[cmdletBinding()]
param(
    [ValidateSet(1,2,3)]
    [int]$param1
)
```
Mithilfe eines **ValidateSet** können die Möglichkeiten der Parameterwerte fest vorgegeben werden. Bei der Verwendung eines **Parametersets** hat man zu dem den Vorteil das die Möglichkeiten bei **Show-Command** die gültigen Werte als Dropdown Menü erscheinen. Sowie die gültigen Werte beim Aufrug in einer PowerShell mit der Tabulator Taste durchschalten lassen.
---
2. ValidateRange
```powershell
[cmdletBinding()]
param(
    [ValidateRange(0,5)]
    [int]$param1
)
```
Mithilfe einer **ValidateRange** kann sowohl der Minimum als auch der Maximum Wert angegeben werden der für diesen Parameter zulässig ist.
---
3. ValidateRange
```powershell
[cmdletBinding()]
param(
    [ValidateScript({<#Prüfung welche True oder False zurückgeben muss#>})]
    [string]$param1

)
```
---
### ZusatzInfo für die Verwendung von ValidateScript in Verbindung mit einer Pfadvalidierung
Mit diesen zwei Möglichkeiten lässt sich das "Problem" umgehen das in der Variable Destinationpath keine noch nicht vorhanden pfade gesetzt werden können.
```powershell
[cmdletBinding()]
param(
    [Parameter(Mandatory=$true)]
    [ValidateScript({Test-Path -Path $PSItem})]
    [string]$Destinationpath
)
#Möglichkeit 1
$filepath = $Destinationpath + "\Datei.txt"

#Möglichkeit 2
New-Item -Path $Destinationpath -Name "Datei.txt" -ItemType Directory
```