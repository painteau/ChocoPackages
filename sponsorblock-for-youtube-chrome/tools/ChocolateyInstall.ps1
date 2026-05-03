$extensionID = 'mnjggcdmjocbbbhaepdhchncahnbgone'
$packageName = 'sponsorblock-for-youtube'

$regPath = if ([Environment]::Is64BitOperatingSystem) {
    "HKLM:\SOFTWARE\Wow6432Node\Google\Chrome\Extensions\$extensionID"
} else {
    "HKLM:\SOFTWARE\Google\Chrome\Extensions\$extensionID"
}

if (Test-Path $regPath) {
    Write-Host "Extension already installed." -ForegroundColor Magenta -BackgroundColor Blue
} else {
    New-Item -Force -Path $regPath | Out-Null
    New-ItemProperty -Path $regPath -Name "update_url" -Value "https://clients2.google.com/service/update2/crx" | Out-Null
    New-ItemProperty -Path $regPath -Name "ChocolateyPackageName" -Value $packageName | Out-Null
}
