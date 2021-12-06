## Mögliche Lösung zur Übung: Pipeline 1

### Aufgabe 1:
```powershell
Get-ADUser -Filter * | Format-Wide -Property SurName -AutoSize
``` 

### Aufgabe 2:
```powershell
Get-ADUser -Filter * | Sort-Object -Property GivenName | Format-Table
#oder
Get-ADUser -Filter * | Sort-Object -Property GivenName | Format-Table -Property GivenName,SurName,Name
#oder
Get-ADUser -Filter * | Sort-Object -Property GivenName | Select-Object -Property GivenName,SurName,Name
```

### Aufgabe 3:
```powershell
#.Net Methode
(Get-ADGroup -Filter *).count

#"schönere" PowerShell Methode
 Get-ADGroup -Filter * | Measure-Object
```

### Aufgabe 4:
```powershell
Get-ADUser -Filter * | Select-Object -Last 3
```

