if vim.g.neovide then
  -- 1. 基础窗口设置
  vim.g.neovide_opacity = 0.95
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_remember_window_size = true
  
  -- 2. 动画效果 (保持流畅感)
  vim.g.neovide_cursor_animation_length = 0.08
  vim.g.neovide_cursor_trail_size = 0.5
  vim.g.neovide_scroll_animation_length = 0.3
  
  -- 3. 输入法优化 (macOS 必备)
  vim.g.neovide_input_ime = true
  
  -- 4. 标题栏恢复默认 (由于 hidden 失效，我们保持默认以确保稳定)
  vim.o.title = true
  vim.o.titlestring = "%t - %{fnamemodify(getcwd(), ':t')}"

  -- 5. 苹果用户核心快捷键 (Command 键映射)
  -- 映射 Command + s 保存
  vim.keymap.set({'n', 'i', 'v'}, '<D-s>', '<cmd>w<cr>', { desc = "Save" })
  -- 映射 Command + c 复制
  vim.keymap.set('v', '<D-c>', '"+y', { desc = "Copy" })
  -- 映射 Command + v 粘贴
  vim.keymap.set({'n', 'v'}, '<D-v>', '"+p', { desc = "Paste" })
  vim.keymap.set('i', '<D-v>', '<C-r>+', { desc = "Paste" })
  vim.keymap.set('c', '<D-v>', '<C-r>+', { desc = "Paste" })
  -- 映射 Command + q 退出
  vim.keymap.set({'n', 'i', 'v'}, '<D-q>', '<cmd>confirm qall<cr>', { desc = "Quit" })
end