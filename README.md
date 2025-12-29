# ⚡️ My Neovim Config (LazyVim + Go + AI)

这是一个专为 **Go 语言全栈开发** 打造的极致 Neovim 配置。基于 [LazyVim](https://github.com/LazyVim/LazyVim) 核心，深度集成了 **GUI 增强 (Neovide)**、**AI 补全 (Supermaven)** 和 **macOS 原生体验**。

![Neovim](https://img.shields.io/badge/Neovim-v0.10.0%2B-blueviolet.svg) ![Go](https://img.shields.io/badge/Go-Ready-00ADD8.svg) ![AI](https://img.shields.io/badge/AI-Supermaven-green.svg)

## ✨ 核心亮点

- **🐹 Go 开发终极形态**:
    - LSP (gopls), 格式化, 调试 (Delve), 测试 (Neotest) 全自动配置。
    - 一键运行项目: `<Space>gr`。
- **🤖 AI 极速补全**:
    - 集成 **Supermaven** (免费/极速)，行内补全体验优于 Copilot。
    - 快捷键: `<Tab>` 接受建议。
- **🖥️ GUI & macOS 深度优化**:
    - **Neovide**: 像原生 Mac App 一样支持 `Cmd+C/V/S/W/Z`。
    - **输入法**: 退出 Insert 模式自动切回英文 (无感异步切换)。
    - **Buffer 管理**: 像 Chrome 一样用 `Cmd+1/2/3` 切换标签页。
- **⚡️ 效率狂魔**:
    - `jj` 秒退 Insert 模式。
    - `s` (Flash) 屏幕任意位置瞬移。
    - 自动居中搜索结果。

---

## 🚀 快速开始 (Quick Start)

### 1. 环境准备 (macOS)
请确保你的系统已安装以下基础工具：

```bash
# 1. 核心工具
brew install neovim go lazygit ripgrep fd

# 2. 字体 (必须安装 Nerd Font 否则图标乱码)
brew tap homebrew/cask-fonts
brew install font-jetbrains-mono-nerd-font

# 3. 输入法切换工具 (可选，推荐)
brew tap daipeihust/tap
brew install im-select
```

### 2. 安装配置
备份你原本的配置（如果有），然后克隆本仓库：

```bash
# 备份旧配置
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak

# 克隆配置
git clone git@github.com:zqr233qr/neovimconfig.git ~/.config/nvim

# 启动 Neovim (自动安装插件)
nvim
```
*首次启动时 Lazy 会自动下载所有插件，请耐心等待 1-2 分钟。*

---

## 📖 常用快捷键 (Cheatsheet)

更详细的教程请在 Neovim 中打开：`:e GUIDE.md`

### ⌘ macOS / Neovide 专属
| 按键 | 功能 |
| --- | --- |
| `Cmd + S` | 保存文件 |
| `Cmd + W` | 关闭当前标签页 |
| `Cmd + 1-9` | 切换到第 1-9 个标签页 |
| `Cmd + C/V` | 复制 / 粘贴 |
| `Cmd + Z` | 撤销 (Undo) |
| `Cmd + Shift + Z` | 重做 (Redo) |

### ⌨️ 编辑效率
| 按键 | 功能 |
| --- | --- |
| `jj` | **退出 Insert 模式** (代替 Esc) |
| `<Space>` | **Leader Key** (所有指令的开始) |
| `<Space> e` | 打开/关闭文件树 |
| `<Space> g r` | `go run .` (运行项目) |
| `<Space> t t` | 运行当前测试函数 |
| `s` | **Flash 跳转** (跳转到屏幕任意位置) |
| `Shift + h/l` | 左右切换标签页 |

---

## 📂 目录结构说明

```text
lua/
├── config/
│   ├── lazy.lua      # 插件管理器主配置
│   ├── keymaps.lua   # 自定义快捷键 (jj, <leader>gr 等)
│   ├── options.lua   # Vim 基础设置 (行号等)
│   └── neovide.lua   # GUI 专属设置 (Cmd键映射, 动画)
└── plugins/
    ├── supermaven.lua# AI 补全配置
    ├── im-select.lua # 输入法自动切换逻辑
    └── bufferline.lua# 顶部标签栏美化 (序号显示)
```

## 📝 License
MIT
