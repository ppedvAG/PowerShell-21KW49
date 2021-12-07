## Mögliche Lösung zur Übung: Schleifen

### Möglichkeit 1:
```powershell
for($i = 1; $i -le 10; $i++)
{
    if($i%2 -eq 0)
    {
        $i
    }
}
``` 


### Möglichkeit 2:
```powershell
for($i = 2; $i -le 5; $i++)
{
    $i * 2
}
``` 

### Möglichkeit 3:
```powershell
for($i = 2; $i -le 10; $i+=2)
{
    $i
}
```


