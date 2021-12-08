@{
    AllNodes = @(
    @{
        NodeName = "Member1"
        WindowsFeatures = @(
            @{
                Name="Web-Server"
                Ensure = "Present"
            },
            @{
                Name="Web-mgmt-tools"
                Ensure = "Present"
            }

        )
     }
    )
}