## Mögliche Lösung zur Übung: Commandlets

### Aufgabe 1:
```powershell
Get-Command -Noun *Computer*
``` 

### Aufgabe 2:
Hierzu sollte vorher die Hilfe heruntergeladen werden mit **Update-Help**
```powershell
Get-Help Set-Service -Examples
```

### Aufgabe 3:

Anzeigen der Hilfe zu den beiden Aliasen in denen dann auch die richtigen cmdlets mit drin stehen
```powershell
Get-Help cd
Get-Help dir
```

Alternativ:

```powershell
Get-Command -Name dir,cd
#Oder
Get-ALias -Name dir,cd
```

### Aufgabe 4:
```powershell
Get-ChildItem -Path C:\Testfiles\ -Filter *.txt -Recurse | Remove-Item -WhatIf
```