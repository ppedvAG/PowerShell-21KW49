# Beginn Process End

Für die Performante Verwendung von Pipelinefähigen Funktionen sollte die Beginn Process End Konstruktion verwendet werden

```powershell
function Get-BeginnProcessEnd
{
[cmdletBinding()]
param(
    [Parameter(ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true)]
    $param
)
    Begin
    {
        Write-Host -Object "Wird am Start nur einmal ausgeführt" -ForegroundColor Cyan
    }
    Process
    {
        Write-Host -Object "Wird für jedes Objekt ausgeführt: $param" -ForegroundColor Green
    }
    End
    {
        Write-Host -Object "Wird am Ende nur einmal ausgeführt" -ForegroundColor Magenta
    }
}
```
Ergebnis:
```powershell
"Objekt1","Objekt2","Objekt3" | Get-BeginnProcessEnd
Wird am Start nur einmal ausgeführt
Wird für jedes Objekt ausgeführt: Objekt1
Wird für jedes Objekt ausgeführt: Objekt2
Wird für jedes Objekt ausgeführt: Objekt3
Wird am Ende nur einmal ausgeführt
```