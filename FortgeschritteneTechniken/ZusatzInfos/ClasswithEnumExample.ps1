class Auto
{
    [string]$Marke
    [string]$Modell
    [string]$Leistung
    [Antriebsart]$Antrieb
    hidden [string]$versteckt #versteckte Eigenschaft die bei Get-Member nur mit dem Force Parameter angezeigt wird

    [void]SetMarke([string]$Marke)
    {
        $this.Marke = $Marke
    }

    [string]ToString() #Überschreibung der im Standard bereits existieren Methode .ToString()
    {
        [string]$Ausgabe = $this.Marke + " | " + $this.Modell
        return $Ausgabe
    }

    [string]ToJSon()
    {
        return ($this | ConvertTo-Json)
    }

    Auto()
    {

    }

    Auto([string]$Marke)
    {
        $this.Marke = $Marke
    }

    Auto([string]$Marke,[string]$Modell)
    {
        $this.Marke = $Marke
        $this.Modell = $Modell
    }
}

enum Antriebsart
{
    Undefined
    Elektrisch
    Hybrid
    Benzin
    Diesel
}

$Mercedes = [Auto]::new("Mercedes")
$Mercedes.Modell = "C-Klasse"
$Mercedes.Leistung = "280PS"

$BMW = [Auto]::new("BMW","F31")