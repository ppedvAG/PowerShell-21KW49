Configuration dynamicServerConfig
{
    Node $AllNodes.Nodename
    {
        LocalConfigurationManager
        {
            ConfigurationMode = "ApplyandAutoCorrect"
            ConfigurationModeFrequencyMins = 15
        }
        foreach($Feature in $Node.WindowsFeatures)
        {
            WindowsFeature $Feature.Name
            {
                Name = $Feature.Name
                Ensure = $Feature.Ensure
            }
        }
    }
}

dynamicServerConfig -OutputPath C:\KursFiles\FortgeschritteneTechniken\DSC\lcm -ConfigurationData C:\KursFiles\FortgeschritteneTechniken\DSC\lcm\dsc-web.psd1

#Start-DscConfiguration -Wait -Verbose -Path C:\KursFiles\FortgeschritteneTechniken\DSC\lcm
#zum manuellen Anwenden der Meta Mof für den LocalConfiguration Manager
#Set-DscLocalConfigurationManager -Path C:\KursFiles\FortgeschritteneTechniken\DSC\lcm