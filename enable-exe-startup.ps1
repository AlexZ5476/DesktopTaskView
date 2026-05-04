$exePath = Join-Path $PSScriptRoot "DesktopTaskView.exe"
$startupFolder = [Environment]::GetFolderPath("Startup")
$shortcutPath = Join-Path $startupFolder "Desktop Task View.lnk"

if (!(Test-Path $exePath)) {
    Write-Host "DesktopTaskView.exe was not found. Please build it first."
    Pause
    exit 1
}

$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut($shortcutPath)
$shortcut.TargetPath = $exePath
$shortcut.WorkingDirectory = $PSScriptRoot
$shortcut.Description = "Single-click desktop to show/restore windows; double-click desktop to open Task View"
$shortcut.Save()

Write-Host "Startup shortcut created:"
Write-Host $shortcutPath
Pause
