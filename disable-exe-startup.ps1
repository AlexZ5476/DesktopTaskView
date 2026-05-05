# Disable DesktopTaskView auto-start by removing the HKCU\...\Run entry.

$ErrorActionPreference = 'Stop'

$run = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run'
if (Test-Path $run) {
    $existing = (Get-ItemProperty -Path $run -ErrorAction SilentlyContinue).DesktopTaskView
    if ($existing) {
        Remove-ItemProperty -Path $run -Name 'DesktopTaskView'
        Write-Host "Disabled. DesktopTaskView no longer starts with Windows."
    } else {
        Write-Host "Already disabled (no entry under HKCU Run)."
    }
} else {
    Write-Host "Already disabled (Run key not present)."
}
