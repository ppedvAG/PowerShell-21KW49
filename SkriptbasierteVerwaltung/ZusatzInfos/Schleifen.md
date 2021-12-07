### Schleifen
```powershell
for($i = 0; $i -le 10; $i++)
{
    #Schleifenkörper
}
```

```powershell
$Users = Get-AdUser -Filter *
foreach($User in $Users)
{
    #Schleifenkörper
    $User.GivenName
}
```

```powershell
while($true)
{
    #Schleifenkörper
}
```

```powershell
do
{
    #Schleife wird mindestens einmal durchlaufen und läuft weiter solange unten in der Prüfung $true rauskommt
}while($true)
```
```powershell
do
{
    #Schleife wird mindestens einmal durchlaufen und läuft weiter solange die Prüfung $false ergibt
}until($false)
```