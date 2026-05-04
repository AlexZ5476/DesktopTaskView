# Desktop Task View

一个很小的 Windows 11 桌面辅助工具。

这是我在没有任何编程基础的情况下，为了解决自己的一个小需求，通过 vibe coding 的方式，用 Codex + GPT 一步一步做出来的第一个小程序。

它可能并不复杂，也可能已经有很多类似工具，但这是我第一次把一个想法变成自己能运行、能发布的 exe。希望路过的朋友可以给一点鼓励，也欢迎提出建议。

## Features

- Single-click an empty desktop area to show or restore the desktop.
- Double-click an empty desktop area to open Windows Task View.
- Runs quietly in the system tray.
- Backup shortcuts: Ctrl+Alt+F11 toggles desktop, Ctrl+Alt+F12 opens Task View.

## Download / Run

Run:

```text
DesktopTaskView.exe
```

Right-click the tray icon to enable/disable it or exit.

## How It Works

For single-click desktop behavior, the app records regular visible windows, minimizes them, and restores only the windows it minimized.

For double-click desktop behavior, it opens Windows Task View through the system shell.

## Build

Double-click:

```text
build-exe.bat
```

It creates:

```text
DesktopTaskView.exe
```

## Startup

After building the exe, double-click:

```text
enable-exe-startup.bat
```

To remove startup:

```text
disable-exe-startup.bat
```

## Why I Made This

I wanted a lightweight way to make Windows 11 feel a little closer to the desktop workflow I like: click the desktop to clear the workspace, double-click to see open windows.

This project is also a learning milestone for me: my first tiny app, made by asking questions, testing, failing, debugging, and improving with AI.
