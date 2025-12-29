if vim.g.neovide then
  -- 1. 基础窗口设置 (保持轻量透明)
  vim.g.neovide_opacity = 0.95
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_remember_window_size = true
  
  -- 2. 动画效果 (平衡流畅与开销)
  -- 缩短动画时长有助于减少 CPU/GPU 渲染压力
  vim.g.neovide_cursor_animation_length = 0.05
  vim.g.neovide_cursor_trail_size = 0.3
  vim.g.neovide_scroll_animation_length = 0.1
  
  -- 3. 性能优化 (降低开销版)
  vim.g.neovide_refresh_rate = 60              -- 锁定 60 帧足以满足开发，降低 GPU 压力
  vim.g.neovide_no_idle = false               -- 允许闲置降频，节省电力
  
  -- 4. 交互
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_input_ime = true
  
  -- 5. 苹果用户核心快捷键 (Command 键映射)
  -- 映射 Command + 1-9 切换标签页
  for i = 1, 9 do
    vim.keymap.set('n', '<D-' .. i .. '>', '<cmd>BufferLineGoToBuffer ' .. i .. '<cr>', { desc = "Switch to buffer " .. i })
  end

  -- 映射 Command + s 保存
  vim.keymap.set({'n', 'i', 'v'}, '<D-s>', '<cmd>w<cr>', { desc = "Save" })
  -- 映射 Command + w 关闭当前标签页
  vim.keymap.set('n', '<D-w>', '<cmd>bd<cr>', { desc = "Close Buffer" })
  
  -- 映射 Command + z 撤销 (Undo)
  vim.keymap.set({'n', 'i', 'v'}, '<D-z>', '<cmd>undo<cr>', { desc = "Undo" })
  -- 映射 Command + Shift + z 重做 (Redo)
  vim.keymap.set({'n', 'i', 'v'}, '<D-S-z>', '<cmd>redo<cr>', { desc = "Redo" })

  -- 映射 Command + a 全选 (Select All)
  vim.keymap.set({'n', 'i', 'v'}, '<D-a>', '<esc>ggVG', { desc = "Select All" })

  -- 映射 Command + c 复制
  vim.keymap.set('v', '<D-c>', '"+y', { desc = "Copy" })
  -- 映射 Command + v 粘贴
  vim.keymap.set({'n', 'v'}, '<D-v>', '"+p', { desc = "Paste" })
  vim.keymap.set('i', '<D-v>', '<C-r>+', { desc = "Paste" })
  vim.keymap.set('c', '<D-v>', '<C-r>+', { desc = "Paste" }) 
  -- 映射 Command + q 退出
  vim.keymap.set({'n', 'i', 'v'}, '<D-q>', '<cmd>confirm qall<cr>', { desc = "Quit" })

  -- 8. 禁用 Ctrl + 滚轮缩放字体
  vim.keymap.set({ "n", "v", "i" }, "<C-ScrollWheelUp>", "<nop>")
  vim.keymap.set({ "n", "v", "i" }, "<C-ScrollWheelDown>", "<nop>")
end