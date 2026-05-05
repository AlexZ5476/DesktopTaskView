@echo off
setlocal

REM DesktopTaskView build script
REM Uses the .NET Framework 4.x C# compiler shipped with Windows.
REM No external SDK / NuGet / MSBuild required.

set "CSC=C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe"
if not exist "%CSC%" (
  echo [error] csc.exe not found at:
  echo   %CSC%
  echo This build needs the .NET Framework 4.x runtime, which ships with Windows 10/11.
  exit /b 1
)

cd /d "%~dp0"

if not exist DesktopTaskView.cs (
  echo [error] DesktopTaskView.cs not found in %CD%
  exit /b 1
)

echo [build] Compiling DesktopTaskView.exe ...
"%CSC%" ^
  /target:winexe ^
  /platform:anycpu ^
  /optimize+ ^
  /langversion:5 ^
  /reference:System.dll ^
  /reference:System.Core.dll ^
  /reference:System.Drawing.dll ^
  /reference:System.Windows.Forms.dll ^
  /out:DesktopTaskView.exe ^
  DesktopTaskView.cs

if errorlevel 1 (
  echo [error] Compilation failed.
  exit /b 1
)

echo [done] DesktopTaskView.exe
endlocal
