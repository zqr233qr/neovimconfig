-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- 快速运行 Go 项目 (go run .)
map("n", "<leader>gr", function()
  Snacks.terminal.open("go run .")
end, { desc = "Go Run Project" })

-- 快速运行当前 Go 文件 (go run current_file.go)
map("n", "<leader>gf", function()
  Snacks.terminal.open("go run " .. vim.fn.expand("%"))
end, { desc = "Go Run Current File" })

-- 退出终端插入模式的快捷键
map("t", "<Esc><Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

-- ========================================================
-- 🚀 效率提升改键 (Efficiency Hacks)
-- ========================================================

-- 1. 极速退出插入模式 (手指不离主键盘区)
-- 输入 "jj" 立即等同于按 Esc
map("i", "jj", "<Esc>", { desc = "Fast Escape" })

-- 2. 搜索/翻页时保持光标居中 (减少眼球移动)
map("n", "n", "nzzzv", { desc = "Next match & center" })
map("n", "N", "Nzzzv", { desc = "Prev match & center" })
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down & center" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up & center" })

-- 3. 经典 IDE 习惯复刻
map("n", "<F2>", "<leader>cr", { desc = "Rename (Smart)" , remap = true })
map("n", "<F5>", "<leader>dc", { desc = "Debug Continue", remap = true })
map("n", "<F10>", "<leader>do", { desc = "Debug Step Over", remap = true })
map("n", "<F11>", "<leader>di", { desc = "Debug Step Into", remap = true })

-- 4. 快速保存 (比 :w<CR> 快)
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- 5. 行首行尾快速跳转 (代替 ^ 和 $)
map({ "n", "v" }, "<leader>h", "^", { desc = "Go to Start of line" })
map({ "n", "v" }, "<leader>l", "$", { desc = "Go to End of line" })

-- 8. 精简进入插入模式的按键 (只保留 i, I, A)
-- 禁用 a, o, O 以强制使用自定义逻辑
-- 恢复 I (行首插入/块编辑) 和 A (行尾插入)
local modes = { "n", "v" }
map(modes, "a", "<nop>")
map(modes, "o", "<nop>")
map(modes, "O", "<nop>")

-- 9. 快速向上换行 (代替 O)
-- 映射 Ctrl + Enter 向上开启新行 (Normal 模式)
map("n", "<C-CR>", "O", { desc = "Insert line above" })
-- 映射回车键本身在 Normal 模式下向下换行 (代替 o)
map("n", "<CR>", "o", { desc = "Insert line below" })

-- 10. 插入模式下的特殊换行
-- Shift + Enter: 在上方插入新行 (哪怕正在打字)
map("i", "<S-CR>", "<Esc>O", { desc = "Insert line above" })
-- Ctrl + Enter: 在下方插入新行 (哪怕光标在行中间)
map("i", "<C-CR>", "<Esc>o", { desc = "Insert line below" })

-- 7. 只删除而不复制 (使用黑洞寄存器)
-- 这样你删除东西时，不会覆盖你刚刚 yy 复制的内容
map({ "n", "v" }, "x", '"_d', { desc = "Delete without yanking" })
map({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })
map("n", "xx", '"_dd', { desc = "Delete line without yanking" })