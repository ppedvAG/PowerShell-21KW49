[cmdletBinding()]
param(
    [Parameter(Mandatory=$true)]
    [ValidateScript({Test-Path -Path $PSItem})]
    [string]$Destinationpath,

    [ValidateRange(1,10)]
    [int]$DirCount = 2,

    [ValidateRange(1,10)]
    [int]$FileCount = 9,

    [ValidateLength(5,10)]
    [string]$DirName = "TestFiles",

    [switch]$Force
)
#Functionsdeklaration
function New-TestFiles
{
[cmdletBinding()]
param(
    [Parameter(Mandatory=$true)]
    [ValidateRange(1,10)]
    [int]$FileCount,

    [Validatelength(2,20)]
    [string]$FileName = "Datei",

    [Parameter(Mandatory=$true)]
    [ValidateScript({Test-Path -Path $PSItem})]
    [string]$Destinationpath
)

    for($i = 1; $i -le $FileCount; $i++)
    {
        $Filename = $FileName + ("{0:D2}" -f $i) + ".txt"
        New-Item -Path $Destinationpath -Name $Filename -ItemType File
    }
}


$TestFilesDir = $Destinationpath + "\" + $DirName

if(Test-Path -Path $TestFilesDir)
{
    if($Force)
    {
        Get-ChildItem -Path $TestFilesDir | Remove-Item -Force -Recurse
    }
    else
    {
        #Nicht Terminierender Fehler
        #Write-Error -Message 

        #Terminierender Fehler
        throw "Ordner bereits vorhanden. Bitte nutzen sie den -Force Parameter wenn der Inhalt gelöscht werden soll "
    }
}
else
{
    New-Item -Path $TestFilesDir -ItemType Directory
}

Write-Debug -Message "Vor Dateierstellung Rootverzeichnis"

New-TestFiles -FileCount $FileCount -FileName "Datei" -Destinationpath $TestFilesDir

<# Wurde ersetzt durch die Funktion New-TestFiles
for($i = 1; $i -le $FileCount; $i++)
{
    $Filename = "Datei" + ("{0:D2}" -f $i) + ".txt"
    New-Item -Path $TestFilesDir -Name $Filename -ItemType File
}
#>

for($i = 1; $i -le $DirCount; $i++)
{
    $DirName = "Ordner" + ("{0:D2}" -f $i)
    $subdir = New-Item -Path $TestFilesDir -Name $DirName -ItemType Directory

    New-TestFiles -Destinationpath $subdir.FullName -FileName ("O$i" + "Datei") -FileCount $FileCount
    <# Wurde ersetzt durch die Funktion New-TestFiles
    for($j = 1; $j -le $FileCount; $j++)
    {
        $Filename = "O" + $i + "Datei" + ("{0:D2}" -f $j) + ".txt"
        New-Item -Path $subdir.FullName -Name $Filename -ItemType File
    }
    #>
}