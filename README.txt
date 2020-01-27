# Windows Workstation Provisioning Scripts

The purpose of these scripts is to automatically install all tools required.

### First-time users

Git is included in the list of dev-tools supported by these provisioning scripts so before continuing uninstall Git if it's already installed on your system.
1. From the Source view in Bitbucket, download this repo via the ellipsis (...) adjacent to the branch dropdown.
2. Unpack the archive to a local temp folder.
3. Open PowerShell (not the x86 version) as Administrator.
4. Navigate to where the repo was unpacked to and execute the **install.ps1** script.
5. Once the script has run, remove the downloaded and unpacked codebases.

### PowerShell scripts

To use, run from PowerShell as Administrator.
- **install.ps1** - Installs chocolatey and all required packages. Note that it won't install chocolatey if it's already present on the system (ie - on the PATH).
- **upgrade.ps1** - Upgrades chocolatey and all packages installed and tracked by it.
- **status.ps1** - List any packages that are out of date.

### Installers folder

Software installers are kept in the **/installers** folder and are currently latest version only.
