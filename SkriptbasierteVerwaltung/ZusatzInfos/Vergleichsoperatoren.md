## Filter Operatoren
Vergleich | Case Insensitive | Case Sensitive
--- | --- | ---
Ist gleich | -eq | -ceq
Ist ungleich | -ne | -cne
Größer als | -gt | -cgt
Kleiner als | -lt | -clt
Größer oder gleich | -ge | -cge
Kleiner oder gleich | -le | -cle
Ähnlich / Wildcard | -like | -clike

## Boolsche Operatoren zum verknüpfen von Bedingungen
```powershell
-and
-or
-xor
```

### Wahrheitstabelle

**-and**
Wert1 | Operator | Wert 2 | = | Ergebnis
--- | --- | --- | --- | ---
$true | -and | $true | = | $true
$false | -and | $false | = | $false
$true | -and | $false | = | $false
$false | -and | $true | = | $false

**-or**
Wert1 | Operator | Wert 2 | = | Ergebnis
--- | --- | --- | --- | ---
$true | -or | $true | = | $true
$false | -or | $false | = | $false
$true | -or | $false | = | $true
$false | -or | $true | = | $true

**-xor**
Wert1 | Operator | Wert 2 | = | Ergebnis
--- | --- | --- | --- | ---
$true | -xor | $true | = | $false
$false | -xor | $false | = | $false
$true | -xor | $false | = | $true
$false | -xor | $true | = | $true