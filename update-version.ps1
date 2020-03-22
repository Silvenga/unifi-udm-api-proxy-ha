param (
    [string] $Version,
    [string] $AddIn = "unifi-udm-api-proxy"
)

$configFile = "$AddIn/config.json"

if (-Not (Test-Path $configFile)) {

}

$currentVersion = (Get-Content $configFile | ConvertFrom-Json).Version

Write-Host "Updating '$AddIn' from '$currentVersion' to '$Version'."

Get-ChildItem -Recurse -File -Filter "*.json" `
    | ForEach-Object {
        $jsonFile = $_.FullName
        $jsonFileContent = Get-Content $jsonFile
        if ($jsonFileContent -like "*$currentVersion*") {
            Write-Host "Updating '$jsonFile'."
            $jsonFileContent -replace $currentVersion, $Version | Set-Content $jsonFile
        }
    }

Write-Host "Done."
