# GitHub 发布指南

这份指南适合没有编程基础的第一次发布。

## 你要发布什么

建议分成两部分：

1. 仓库源码：让别人看到这个小程序是怎么做出来的。
2. Release 附件：让别人直接下载 `DesktopTaskView.exe` 或 `DesktopTaskView-v0.1.0.zip`。

## 第一步：创建 GitHub 仓库

1. 登录 GitHub。
2. 右上角点击 `+`。
3. 选择 `New repository`。
4. Repository name 填：

```text
DesktopTaskView
```

5. Description 可以填：

```text
A tiny Windows 11 desktop helper made through vibe coding with Codex + GPT.
```

6. 选择 `Public`。
7. 不要勾选 `Add a README file`，因为我们已经有 README。
8. 点击 `Create repository`。

## 第二步：上传项目文件

如果你不会用 Git 命令，可以用网页上传：

1. 进入刚创建的仓库。
2. 点击 `uploading an existing file`。
3. 把当前项目根目录里的这些文件拖进去：

```text
.gitignore
DesktopTaskView.cs
DesktopTaskView.exe
build-exe.bat
enable-exe-startup.bat
enable-exe-startup.ps1
disable-exe-startup.bat
disable-exe-startup.ps1
README.md
RELEASE_NOTES.md
LICENSE
GITHUB_PUBLISH_GUIDE.md
```

4. `Commit changes` 那里填：

```text
Initial release
```

5. 点击 `Commit changes`。

说明：`useless` 文件夹是历史实验文件，可以不上传。如果你想完整保留，也可以上传。

## 第三步：创建 Release

1. 进入仓库首页。
2. 找到右侧或文件列表附近的 `Releases`。
3. 点击 `Draft a new release`。
4. Tag 填：

```text
v0.1.0
```

5. Release title 填：

```text
Desktop Task View v0.1.0
```

6. Description 可以复制 `RELEASE_NOTES.md` 里的内容。
7. 在附件区域上传：

```text
release/DesktopTaskView-v0.1.0.zip
```

或者直接上传：

```text
DesktopTaskView.exe
```

8. 点击 `Publish release`。

## 可以写在仓库介绍里的话

你可以这样介绍它：

```text
This is my first small Windows app. I have no programming background, but I built it step by step through vibe coding with Codex + GPT to solve a tiny desktop workflow need of my own. It may not be perfect, and there may be many similar tools, but this one means a lot to me because it is the first program I made myself.
```

中文也可以这样写：

```text
这是我没有任何编程基础时做出的第一个 Windows 小程序。它只是为了解决我自己的一个桌面使用小需求，通过 vibe coding 的方式，在 Codex + GPT 的帮助下一步一步做出来。也许类似工具已经很多，但这个项目对我来说很特别，因为它是我第一次把一个想法变成真正能运行的程序。
```

## 发布后可以做什么

- 把仓库链接发给朋友。
- 在 README 里继续记录你做这个工具的过程。
- 如果有人提 issue，不用紧张，把它当成继续学习。
- 下一版可以考虑加图标、设置界面、安装包。
