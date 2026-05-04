$startupFolder = [Environment]::GetFolderPath("Startup")
$shortcutPath = Join-Path $startupFolder "Desktop Task View.lnk"

if (Test-Path $shortcutPath) {
    Remove-Item -LiteralPath $shortcutPath
    Write-Host "Startup shortcut removed."
} else {
    Write-Host "Startup shortcut was not found."
}

Pause
