# Enable DesktopTaskView auto-start by writing to HKCU\...\Run
# Equivalent to ticking "Start with Windows" in the Settings UI.

$ErrorActionPreference = 'Stop'

$exe = Join-Path $PSScriptRoot 'DesktopTaskView.exe'
if (-not (Test-Path $exe)) {
    Write-Error "DesktopTaskView.exe not found next to this script: $exe"
}

$run = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run'
if (-not (Test-Path $run)) { New-Item -Path $run -Force | Out-Null }
Set-ItemProperty -Path $run -Name 'DesktopTaskView' -Value ('"{0}"' -f $exe)
Write-Host "Enabled. DesktopTaskView will start with Windows for the current user."
Write-Host "  Path: $exe"
