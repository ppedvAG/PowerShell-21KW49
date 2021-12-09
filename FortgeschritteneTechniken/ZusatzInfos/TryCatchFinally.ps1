try
{
   #Hier probiere ich etwas was schief laufen kann
   #ErrorAction muss auf Stop
   Test-Path -Path C:\öalksdjjf -ErrorAction Stop
}
catch
{
    #Wird im Fehlerfall ausgeführt
    Write-Host -Object "Fehler" -ForegroundColor Magenta
}
finally
{
    #Das hier läuft immer
    Write-Host -Object "finally" -ForegroundColor Magenta
}

#erzeugen eines Terminierenden Fehlers mithilfe von
throw "Terminierender Fehler"

#erzeugen eines nicht terminierenden Fehlers mithilfe von 
Write-Error