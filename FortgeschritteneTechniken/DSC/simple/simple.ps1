configuration SimpleWebServer
{
    # Zum Abrufen der Knotenliste können Ausdrücke ausgewertet werden.
    # Beispiel: $AllNodes.Where("Role -eq Web").NodeName
    node ("Member1")
    {
        # Ressourcenanbieter aufrufen
        # Beispiel: WindowsFeature, File
        WindowsFeature WebServerRole
        {
           Ensure = "Present"
           Name   = "Web-Server"
        }
        
        WindowsFeature WebVerwaltung
        {
            Ensure = "Present"
            Name   = "Web-Mgmt-Tools"
        }      
    }
}
#zum erzeugen der MOF Datei, steht erst zur Verfügung wenn die Konfiguration ausgeführt wurde.
SimpleWebServer -OutputPath "C:\KursFiles\FortgeschritteneTechniken\DSC\simple"

#Zum Anwenden der Konfiguration auf die angegebenen Nodes
#Start-DscConfiguration -Wait -Verbose -Path C:\KursFiles\FortgeschritteneTechniken\DSC\simpl