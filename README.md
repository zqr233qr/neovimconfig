# ⚡️ My Neovim Config (LazyVim + Go)

这是一个基于 [LazyVim](https://github.com/LazyVim/LazyVim) 高度定制的 Neovim 配置，专为 **Go 语言开发** 打造，并集成了 AI 辅助与 GUI 增强。

![Neovim](https://img.shields.io/badge/Neovim-v0.10.0+-blueviolet.svg) ![Go](https://img.shields.io/badge/Go-Ready-blue.svg)

## ✨ 特色功能 (Highlights)

- **Go 全能开发**: 
  - 自动补全、LSP (gopls)、调试 (Delve)、测试 (Neotest) 开箱即用。
  - 一键运行项目 (`<leader>gr`)。
- **AI 赋能**:
  - 集成 **Supermaven** 提供极速行内代码补全。
- **macOS 深度优化**:
  - **Neovide GUI**: 支持 Mac 快捷键 (`Cmd+C/V/S`)，平滑动画与透明窗口。
  - **输入法自动切换**: 退出 Insert 模式自动切回英文 (无延迟异步实现)。
- **效率增强**:
  - `jj` 秒退 Insert 模式。
  - `s` (Flash) 快速跳转。
  - 自动居中搜索结果。

---

## 🚀 快速开始

### 1. 依赖要求
确保你的系统已安装：
- **Neovim** >= 0.10.0
- **Go** (用于开发)
- **Nerd Font** (如 JetBrainsMono Nerd Font)
- **依赖工具** (macOS):
  ```bash
  brew install ripgrep fd lazygit
  brew install im-select # 用于输入法切换
  ```

### 2. 安装
备份旧配置并克隆本仓库：
```bash
# 备份
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak

# 克隆
git clone git@github.com:zqr233qr/neovimconfig.git ~/.config/nvim

# 启动
nvim
```
首次启动会自动下载插件，请耐心等待。

---

## 📖 使用指南 (Cheatsheet)

详细的使用教程请查看本地文档：[GUIDE.md](./GUIDE.md)

### 🔥 核心快捷键
| 按键 | 功能 |
| --- | --- |
| `<Space>` | **Leader Key** (所有命令的起始键) |
| `<leader> e` | 打开文件资源管理器 (NeoTree) |
| `<leader> f f` | 查找文件 |
| `<leader> g g` | 打开 Git 面板 (LazyGit) |
| `<leader> f t` | 打开悬浮终端 |

### 🐹 Go 开发
| 按键 | 功能 |
| --- | --- |
| `<leader> g r` | 运行项目 (`go run .`) |
| `<leader> g f` | 运行当前文件 |
| `<leader> t t` | 运行当前测试函数 |
| `<leader> d c` | 启动调试 (需打断点 `<leader>db`) |
| `g d` | 跳转定义 |

### ⚡️ 效率操作
| 按键 | 功能 |
| --- | --- |
| `jj` | **退出 Insert 模式** (代替 Esc) |
| `s` | **Flash 跳转** (屏幕任意位置瞬移) |
| `<Ctrl> + s` | 保存文件 |
| `<Tab>` | 接受 AI 补全 |

---

## 📂 目录结构

```text
lua/
├── config/
│   ├── lazy.lua      # 插件管理器配置
│   ├── keymaps.lua   # 自定义快捷键
│   ├── options.lua   # Neovim 基础设置
│   └── neovide.lua   # GUI 专属设置
└── plugins/
    ├── example.lua   # 示例插件配置
    ├── supermaven.lua# AI 补全配置
    └── im-select.lua # 输入法自动切换逻辑
```

## 📝 License
MIT