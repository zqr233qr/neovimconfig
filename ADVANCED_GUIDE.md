# LazyVim & Go 进阶开发指南

恭喜你完成了新手阶段！本指南将带你解锁 Neovim 的真正威力，专注于提高编码效率和解决复杂问题。

## 1. 像专家一样导航 (Symbols & Outline)
当文件变得很长时，`gg` 和 `/` 搜索就不够快了。你需要“鸟瞰”代码。

- **`<leader> s s` (Goto Symbol)**:
    列出当前文件中的所有 函数、结构体、变量。
    *场景：快速跳到当前文件中的 `InitDatabase` 函数。*

- **`<leader> s S` (Goto Symbol Workspace)**:
    搜索**整个项目**中的符号。
    *场景：记得有个函数叫 `ProcessOrder`，但不记得在哪个文件里。*

- **`<leader> c s` (Symbols Outline)**:
    打开侧边栏的大纲视图（如果有安装 aerial 或类似插件，标准 LazyVim 可能使用 Telescope 替代）。

## 2. 高效重构与代码操作 (Code Actions)
Go 语言开发中，很多重复劳动可以自动化。

- **`<leader> c a` (Code Action)**: **这是最重要的进阶快捷键！**
    光标停在代码上，按下它，看看 LSP 能为你做什么：
    - **自动填充结构体 (Fill struct)**: 初始化 struct 时，自动填入所有字段。
    - **实现接口 (Implement interface)**: 生成接口所需的方法存根。
    - **组织导入 (Organize Imports)**: 清理没用的 import。
    - **处理错误**: 有些插件支持将函数调用自动包裹在 `if err != nil` 中。

## 3. 批量处理问题 (Trouble.nvim)
不要一个个文件去修 Bug，把它们汇总起来。

- **`<leader> x x` (Toggle Trouble)**:
    打开底部的“问题面板”。它会列出项目中所有的 错误 (Error)、警告 (Warning) 和 提示 (Hint)。
    - 使用 `j` / `k` 在问题间移动，回车跳转。
- **`<leader> x t` (Todo List)**:
    列出项目中所有的 `TODO`, `FIXME`, `HACK` 注释。
    *场景：快速找到你上次留下的坑。*

## 4. 可视化调试 (DAP UI)
你在新手指南中学会了打断点，现在我们要看清程序内部。

当调试启动后 (`<leader> d c`)，LazyVim 会自动打开调试界面：
- **Scopes**: 查看当前作用域下的变量值。
- **Watches**: 监视特定变量或表达式（可以在这里添加你关心的变量）。
- **Stack**: 查看函数调用堆栈。
- **Console**: 查看程序输出。

- **`<leader> d u`**: 手动打开/关闭调试界面。
- **`<leader> d e`**: 在浮窗中计算当前选中的表达式 (Eval)。

## 5. 极速 Git 操作 (LazyGit)
LazyVim 深度集成了 `LazyGit`（前提：你的终端需先安装 `brew install lazygit`）。

- **`<leader> g g`**:
    打开一个浮动的 LazyGit 窗口。你可以在这里完成 99% 的 Git 操作：
    - `Space` 暂存文件 (Stage)。
    - `c` 提交 (Commit)。
    - `P` 推送 (Push)。
    - 上下移动查看 Diff。
    - 按 `q` 退出回到编辑器。

- **`<leader> g b`**: 查看当前行的 Git Blame（是谁在什么时候写了这行代码）。

## 6. 代码片段 (Snippets) - 编码加速器
Go 代码中有很多重复模式。LazyVim 使用 `LuaSnip` 引擎。

- **Try it**:
    在 Insert 模式下，输入 `iferr` 或 `err`，然后观察自动补全菜单。
    如果你看到了 Snippet 提示，按下 `Enter` 或 `Tab`（取决于具体配置，通常是确认补全键）。
    它会自动展开为：
    ```go
    if err != nil {
        return nil, err
    }
    ```
    并允许你跳转修改返回值。

## 7. 进阶配置：自定义你的编辑器
随着使用深入，你可能想要自定义一些行为。

### 安装额外的 Go 工具
除了默认的 `gopls`，你可能还想要：
- **`gomodifytags`**: 快速添加/删除 struct 的 json/yaml 标签。
- **`impl`**: 用于生成接口实现。

运行命令 `:Mason`，找到这些工具并按 `i` 安装。安装后，它们通常会出现在 `<leader> c a` (Code Actions) 中，或者可以通过命令调用。

### 会话管理 (Session)
关掉编辑器去睡觉，第二天想恢复原样？
- **`<leader> q s`**: 恢复上次的会话（打开之前所有的窗口和文件）。

---
**小贴士**: 遇到不知道的快捷键？
按下 `<leader>` (空格) 后停顿 1 秒，屏幕底部会自动弹出快捷键提示菜单 (WhichKey)。这是最好的说明书。
