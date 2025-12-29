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

-- 5. 插入模式下的微操 (不退出模式移动光标)
-- Ctrl+h/j/k/l 在打字时微调位置
map("i", "<C-h>", "<Left>", { desc = "Left" })
map("i", "<C-l>", "<Right>", { desc = "Right" })
map("i", "<C-j>", "<Down>", { desc = "Down" })
map("i", "<C-k>", "<Up>", { desc = "Up" })