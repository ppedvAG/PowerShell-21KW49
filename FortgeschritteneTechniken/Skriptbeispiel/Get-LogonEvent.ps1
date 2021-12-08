<#
.Synopsis
   kurze Beschreibung: Abfrage von Anmeldespezifischen Events
.DESCRIPTION
   Mit diesem Skript können Anmeldebezogene Events abegrafragt werden wie zb Anmelde, Abmeldeevents sowie fehlgeschlagene Anmeldungen.
.PARAMETER EventId
   Mit diesem Parameter wird die Art des Events festgelegt. Mögliche Werte sind:
   4624 | Anmeldung
   4625 | fehlgeschlagene Anmeldung
   4634 | Abmeldung
.EXAMPLE
   Get-LogonEvent.ps1 -EventId 4625

   Index Time          EntryType   Source                 InstanceID Message
   ----- ----          ---------   ------                 ---------- -------
   21982 Dez 08 10:10  FailureA... Microsoft-Windows...         4625 Fehler beim Anmelden eines Kontos....
   17483 Dez 07 15:04  FailureA... Microsoft-Windows...         4625 Fehler beim Anmelden eines Kontos....
   17482 Dez 07 15:04  FailureA... Microsoft-Windows...         4625 Fehler beim Anmelden eines Kontos....
   14425 Dez 07 09:15  FailureA... Microsoft-Windows...         4625 Fehler beim Anmelden eines Kontos....
   14424 Dez 07 09:15  FailureA... Microsoft-Windows...         4625 Fehler beim Anmelden eines Kontos....

   Weiter Erklärungstext
.EXAMPLE
   Ein weiteres Beispiel für die Verwendung dieses Cmdlets
#>
[cmdletBinding()]
Param(
[ValidateSet(4624,4625,4634)]
[Parameter(Mandatory=$true)]
[int]$EventId,

[ValidateRange(1,10)]
[int]$Newest = 5,

[ValidateScript({Test-NetConnection -ComputerName $PSItem -CommonTCPPort WINRM -InformationLevel Quiet})]
[string]$ComputerName = "localhost"
)

Write-Verbose -Message "Zusätzliche Ausgabe: Der User hat das Skript mit folgenden Werten gestartet:"
Write-Verbose -Message "$EventId | $ComputerName | $Newest"

Get-EventLog -LogName Security -ComputerName $ComputerName | Where-Object -FilterScript {$PSItem.EventId -eq $EventId} | Select-Object -First $Newest

