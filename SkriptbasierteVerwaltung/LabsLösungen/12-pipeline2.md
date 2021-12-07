## Mögliche Lösung zur Übung: Pipeline2

### Möglichkeit 1:

```powershell

Import-Csv -Path .\MyNewAdUsers1.csv | New-ADUser
``` 
User werden deaktiviert angelegt da **New-AdUser** nur Passwörter als SecureString akzeptiert.

### Möglichkeit 2:
User werden aktiviert angelegt da das Passwort in einen Securestring konvertiert werden.
```powershell
Import-Csv -Path C:\Testfiles\MyNewAdUsers2.csv | ForEach-Object {
            New-ADUser -GivenName $_.GivenName `
                       -Surname $_.SurName `
                       -Name $_.Name `
                       -SamAccountName $_.SamAccountName `
                       -Department $_.Department `
                       -Path $_.Path `
                       -Enabled ([bool]::Parse($_.Enabled)) `
                       -AccountPassword (ConvertTo-SecureString $_.Password -AsPlainText -Force)
}
``` 


