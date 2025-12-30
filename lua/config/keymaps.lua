-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local map = vim.keymap.set

-- ========================================================
-- 1. 基础文件操作 (Basic File Operations)
-- ========================================================

-- 快速保存 (Ctrl+s)
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- 全选 (Alt+a)
map({ "n", "v", "i" }, "<M-a>", "<esc>ggVG", { desc = "Select All" })

-- ========================================================
-- 2. 标签页与窗口管理 (Buffer & Window)
-- ========================================================

-- 快速切换标签页 (Alt + 1..9)
for i = 1, 9 do
  map("n", "<M-" .. i .. ">", "<cmd>BufferLineGoToBuffer " .. i .. "<cr>", { desc = "Go to buffer " .. i })
end

-- 关闭当前标签页 (Alt + w)
map("n", "<M-w>", "<cmd>bd<cr>", { desc = "Close Buffer" })

-- ========================================================
-- 3. 编辑效率提升 (Efficiency Hacks)
-- ========================================================

-- 极速退出插入模式 (jj)
map("i", "jj", "<Esc>", { desc = "Fast Escape" })

-- 插入模式下的快速换行
map("i", "<S-CR>", "<Esc>O", { desc = "Insert line above" }) -- Shift+Enter: 上方插行
map("i", "<C-CR>", "<Esc>o", { desc = "Insert line below" }) -- Ctrl+Enter: 下方插行

-- 修复 Alt + 方向键在 Insert 模式下退出的问题
map("i", "<M-Left>", "<Left>", { desc = "Move cursor left" })
map("i", "<M-Right>", "<Right>", { desc = "Move cursor right" })
map("i", "<M-Up>", "<Up>", { desc = "Move cursor up" })
map("i", "<M-Down>", "<Down>", { desc = "Move cursor down" })

-- 行首行尾跳转 (<leader>h / l)
map({ "n", "v" }, "<leader>h", "^", { desc = "Go to Start of line" })
map({ "n", "v" }, "<leader>l", "$", { desc = "Go to End of line" })

-- 黑洞删除 (不覆盖剪贴板)
map({ "n", "v" }, "x", '"_d', { desc = "Delete without yanking" })
map({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })
map("n", "xx", '"_dd', { desc = "Delete line without yanking" })

-- 搜索结果自动居中
map("n", "n", "nzzzv", { desc = "Next match & center" })
map("n", "N", "Nzzzv", { desc = "Prev match & center" })
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down & center" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up & center" })

-- ========================================================
-- 4. Go 开发与终端 (Development)
-- ========================================================

-- 快速运行
map("n", "<leader>gr", function() Snacks.terminal.open("go run .") end, { desc = "Go Run Project" })
map("n", "<leader>gf", function() Snacks.terminal.open("go run " .. vim.fn.expand("%")) end, { desc = "Go Run Current File" })

-- 终端内退出插入模式
map("t", "<Esc><Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

-- 经典 IDE 键位映射
map("n", "<F2>", "<leader>cr", { desc = "Rename (Smart)", remap = true })
map("n", "<F5>", "<leader>dc", { desc = "Debug Continue", remap = true })
map("n", "<F10>", "<leader>do", { desc = "Debug Step Over", remap = true })
map("n", "<F11>", "<leader>di", { desc = "Debug Step Into", remap = true })

-- ========================================================
-- 5. AI 辅助 (Copilot)
-- ========================================================

-- 打开 Copilot 面板 (Alt + p 或 <leader>cp)
map("n", "<leader>cp", "<cmd>Copilot panel<cr>", { desc = "Open Copilot Panel" })
map("i", "<M-p>", "<cmd>Copilot panel<cr>", { desc = "Open Copilot Panel" })

-- ========================================================
-- 6. 精简模式 (Disable Keys)
-- ========================================================
-- 禁用 'a' 以强制使用更精确的操作 (i, A, o, O)
map({ "n", "v" }, "a", "<nop>")