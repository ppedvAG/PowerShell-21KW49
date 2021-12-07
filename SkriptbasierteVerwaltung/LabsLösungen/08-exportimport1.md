## Mögliche Lösung zur Übung: Export /  Import 1

### Aufgabe 1:
```powershell
Get-EventLog -LogName System -Newest 10 | Export-Csv -Path C:\Testfiles\events.csv
#alternativ (aber ineffizienter)
Get-EventLog -LogName System | Select-Object -Last 10 | Export-Csv -Path C:\Testfiles\events.csv
``` 



