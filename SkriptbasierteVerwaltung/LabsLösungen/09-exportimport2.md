## Mögliche Lösung zur Übung: Export /  Import 2

### Möglichkeit 1:
```powershell
$var = Get-Content -Path C:\Testfiles\MyServices.txt
PS C:\Testfiles> Get-Service -Name $var
``` 

### Möglichkeit 2:
```powershell
#Effizienteste Lösung
Get-Service -Name (Get-Content -Path C:\Testfiles\MyServices.txt)
``` 

### Möglichkeit 3:
```powershell
#einfachste Lösung
Get-Content -Path C:\Testfiles\MyServices.txt | Get-Service
``` 



