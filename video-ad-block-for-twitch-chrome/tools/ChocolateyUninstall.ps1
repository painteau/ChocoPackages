$extensionID = 'kgeglempfkhalebjlogemlmeakondflc'

$regPath = if ([Environment]::Is64BitOperatingSystem) {
    "HKLM:\SOFTWARE\Wow6432Node\Google\Chrome\Extensions\$extensionID"
} else {
    "HKLM:\SOFTWARE\Google\Chrome\Extensions\$extensionID"
}

Remove-Item $regPath -Force -ErrorAction SilentlyContinue | Out-Null
