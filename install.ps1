# Switch to the installers directory
cd installers

# Don't install chocolately over the top of itself. If it needs upgrading, us the upgrade script. 
if (!(Get-Command "choco.exe" -ErrorAction SilentlyContinue)){
	.\chocolately.ps1
}

# Execute the application installers
.\7zip.ps1
.\notepad-plus-plus.ps1
.\passwordsafe.ps1
.\treesizefree.ps1

.\git.ps1
.\jdk8.ps1
.\maven.ps1

.\putty.ps1
.\winscp.ps1

# Return to root directory
cd ..

# Output list of installed packages
choco list -local-only