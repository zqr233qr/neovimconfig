if vim.g.neovide then
  -- 1. 基础窗口设置
  vim.g.neovide_opacity = 0.95
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_remember_window_size = true
  
  -- 视觉美化：增加行间距，让代码更透气
  vim.opt.linespace = 4
  
  -- 2. 动画效果
  vim.g.neovide_cursor_animation_length = 0.05
  vim.g.neovide_cursor_trail_size = 0.3
  vim.g.neovide_scroll_animation_length = 0.1
  
  -- 3. 性能优化
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_no_idle = false
  
  -- 4. 交互
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_input_ime = true
  
  -- 5. 核心 Command 键映射 (仅保留系统级剪贴板操作)
  -- 映射 Command + a 全选
  vim.keymap.set({'n', 'i', 'v'}, '<D-a>', '<esc>ggVG', { desc = "Select All" })
  -- 映射 Command + c 复制
  vim.keymap.set('v', '<D-c>', '"+y', { desc = "Copy" })
  -- 映射 Command + v 粘贴
  vim.keymap.set({'n', 'v'}, '<D-v>', '"+p', { desc = "Paste" })
  vim.keymap.set('i', '<D-v>', '<C-r>+', { desc = "Paste" })
  vim.keymap.set('c', '<D-v>', '<C-r>+', { desc = "Paste" }) 
  
  -- 其他 IDE 习惯 (保存、撤销等) 已迁移至 keymaps.lua 使用 Ctrl 组合键，
  -- 以保持 Neovide 与 Kitty/Terminal 的体验一致性。
  
  -- 8. 禁用 Ctrl + 滚轮缩放字体
  vim.keymap.set({ "n", "v", "i" }, "<C-ScrollWheelUp>", "<nop>")
  vim.keymap.set({ "n", "v", "i" }, "<C-ScrollWheelDown>", "<nop>")
end
