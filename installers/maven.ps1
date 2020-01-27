#Installs the latest release of Apache Maven
#Note:
#If a M2_HOME environment variable exists, 'choco install maven' will repace it and it will be removed following 'choco uninstall maven'
choco install maven -y

cd ..\config\maven
.\set-mvn-env-vars.ps1
.\copy-settings-xml.ps1

cd ..\..\installers