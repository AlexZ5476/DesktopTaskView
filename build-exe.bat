@echo off
setlocal
set CSC=%WINDIR%\Microsoft.NET\Framework64\v4.0.30319\csc.exe
if not exist "%CSC%" set CSC=%WINDIR%\Microsoft.NET\Framework\v4.0.30319\csc.exe
if not exist "%CSC%" (
  echo C# compiler was not found.
  pause
  exit /b 1
)

if exist "%~dp0DesktopTaskView.exe" del "%~dp0DesktopTaskView.exe"
"%CSC%" /nologo /target:winexe /optimize+ /platform:x64 /out:"%~dp0DesktopTaskView.exe" /reference:System.dll /reference:System.Drawing.dll /reference:System.Windows.Forms.dll "%~dp0DesktopTaskView.cs"
if errorlevel 1 (
  echo Build failed.
  pause
  exit /b 1
)

if exist "%~dp0DesktopTaskView.exe" (
  echo Build complete:
  echo %~dp0DesktopTaskView.exe
) else (
  echo Build failed.
)
pause
