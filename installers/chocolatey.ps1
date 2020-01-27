# Execute the standard install of chocolatey as per their instructions (https://chocolatey.org/install)
#
# Note that by default, the 'ExecutionPolicy on standard machines is 'RemotedSigined' 
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))