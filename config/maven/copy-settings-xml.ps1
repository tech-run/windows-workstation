#Create the settings.xml with relevant settings
#This only works if there no existing settings.xml.
#If you have a pre-existing settings.xml you should updated the relevant sections based on https://confluence.westpac.co.nz/display/ITJAVA/Maven+on+your+Development+Machine
Write-Host "Copying settings.xml to ${env:M2_HOME}" -ForegroundColor Cyan

$currentDir = Get-Location

$settingsFilename = "${env:M2_HOME}\conf\settings.xml"
if (-not (Test-Path -LiteralPath $settingsFilename)) {

                Copy-Item -Path "${currentDir}\settings.xml" -Destination "${env:M2_HOME}\conf"
                Write-Host "settings.xml copied, you should update SALARY_ID and DERIVED_FROM_ARTIFACTORY2" -ForegroundColor Cyan
} else {
                Write-Host "Copy failed as settings.xml already exists in ${env:M2_HOME}\conf" -ForegroundColor Cyan
}
