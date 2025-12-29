-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 关闭相对行号，只显示绝对行号
vim.opt.relativenumber = false
vim.opt.number = true

require("config.neovide")