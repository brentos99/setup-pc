$wingetPackages = Get-Content .\winget-packages.txt

$wingetPackages | {

    . winget install $_
}

$extraParams = " --custom '--add Microsoft.VisualStudio.Workload.Azure,Microsoft.VisualStudio.Workload.Data,Microsoft.VisualStudio.Workload.NetCrossPlat,Microsoft.VisualStudio.Workload.NetWeb'"

winget install 'Microsoft.VisualStudio.2022.Enterprise' $extraParams

dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart