-- Options are automatically loaded before lazy.nvim startup
-- Default options: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- 1. 基础显示设置
vim.opt.relativenumber = false -- 禁用相对行号
vim.opt.number = true          -- 启用绝对行号
vim.opt.scrolloff = 0          -- 滚动时不强制偏移光标

-- 2. macOS & Neovide 优化
if vim.g.neovide then
  vim.g.neovide_input_macos_option_key_is_meta = "both"
end

-- 3. 加载扩展配置

require("config.neovide")
