choco install git -y --params "/NoAutoCrlf /GitAndUnixToosOnPath /NoGitLfs /SChannel"

#Create user settings if config doesn't already exist.
$outFilename = "${env:HOMEDRIVE}${env:HOMEPATH}\.gitconfig"
if (-not (Test-Path -LiteralPath $outFilename)){
	$userName = abegbie
	$userEmail = abegbie@gmail.com
	$outText = "[http]`n sslVerify = false`n[user]`n name = $userName`n email = $userEmail"
	
	Out-File -FilePath $outFilename -InputObject $OutText -NoClobber -NoNewLine -Encoding utf8
	Write-Host "`nThe additional user settings were written out to $outFilename :" -ForegroundColor Cyan
	Write-Host "$outText" -ForegroundColor Cyan
}