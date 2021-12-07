## Mögliche Lösung zur Übung: Filtern 1

### Lösung:
```powershell
Get-Service | Where-Object -FilterScript {$_.Name.Length -gt 15}
``` 
**PSItem** und **$-** haben die gleiche Funktion. 

**$PSItem** wurde mit der PowerShell Version 3.0 eingeführt und ist besser zu lessen.

**$_** hätte mehr Abwärtskompatibilität.




