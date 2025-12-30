-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 关闭相对行号，只显示绝对行号
vim.opt.relativenumber = false
vim.opt.number = true

-- 滚动时不强制保持光标与边缘的距离 (0 表示最贴边)
vim.opt.scrolloff = 0

require("config.neovide")if vim.g.neovide then vim.g.neovide_input_macos_option_key_is_meta = "both" end
