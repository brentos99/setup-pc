$wingetPackages = Get-Content .\winget-packages.txt

$wingetPackages | {

    . winget install $_
}