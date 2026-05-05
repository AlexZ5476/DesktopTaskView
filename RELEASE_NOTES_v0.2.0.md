# DesktopTaskView v0.2.0

First feature release after the v0.1.x click-detection fixes.

## Highlights

- **Settings UI.** Click the tray icon (or the new "Settings..." menu item)
  to open a real settings dialog.
- **Persistent config** at `%APPDATA%\DesktopTaskView\settings.ini`.
- **Adjustable click timing** (double-click window + single-click delay),
  independent of the Windows system default.
- **Excluded processes list** — windows from those processes are never
  minimized.
- **Custom tray icon**, drawn at runtime so the build is still a single
  self-contained `.exe`.
- **Auto-start toggle** in the tray menu and the settings window
  (`HKCU\...\Run`).
- **Configurable hotkeys** — defaults remain `Ctrl+Alt+F11` (toggle
  desktop) and `Ctrl+Alt+F12` (Task View); leave blank to disable.

## Preserved from v0.1.1

- Strict desktop hit-testing (`Progman`/`WorkerW` ancestry +
  `SHELLDLL_DefView` ownership) so File Explorer file lists are not
  mistaken for the desktop.
- `SetProcessDPIAware()` at startup.
- Single-instance mutex.

## Install

Download `DesktopTaskView.exe` and double-click it. No installer, no admin
rights. Settings live under `%APPDATA%\DesktopTaskView\` so the exe can be
moved freely.

## Build from source

```bat
build-exe.bat
```

Uses the C# compiler shipped with Windows
(`Framework64\v4.0.30319\csc.exe`). No SDK / NuGet / MSBuild required.

## Upgrade notes from v0.1.x

- Existing installs keep working; the new settings file is created on
  first run with values matching the old hard-coded behavior.
- The single-instance mutex name changed; if both v0.1.x and v0.2.0 are
  running at the same time, exit v0.1.x from its tray menu first.

## SHA-256

```
DesktopTaskView.exe          D7B0CBC528BD7A46A0BFDB2ACBC506D288F3935FD1CD01E222BBF23FADCCA5AE
DesktopTaskView-v0.2.0.zip   4F983A18D2D107E2600B63B248A9718859DC93207AB20EEF0969CC776EAFA195
```

Verify before running:

```powershell
Get-FileHash .\DesktopTaskView.exe -Algorithm SHA256
```
