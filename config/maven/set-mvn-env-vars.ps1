#Sets the MAVEN_OPTS env variable
Write-Host "Setting MAVEN_OPTS System variable for Java trust store" -ForegroundColor Cyan

[System.Environment]::SetEnvironmentVariable('MAVEN_OPTS', '-Djavax.net.ssl.trustStoreType=WINDOWS-ROOT', [System.EnvironmentVariableTarget]::Machine) 
