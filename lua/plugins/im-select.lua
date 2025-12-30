return {
  {
    "nvim-api/nvim",
    dir = vim.fn.stdpath("config"),
    lazy = false,
    config = function()
      -- 缓存 im-select 的路径，避免重复查找
      local im_select_path = vim.fn.exepath("im-select")
      
      if im_select_path == "" then
        return -- 没装 im-select 就不运行
      end

      -- 优化版：使用 JobStart 异步执行，不阻塞 UI
      local function switch_to_english()
        vim.fn.jobstart({ im_select_path, "com.apple.keylayout.ABC" }, {
          detach = true, -- 分离进程，进一步减少等待
        })
      end
      
      -- 创建自动命令
      local group = vim.api.nvim_create_augroup("AutoInputMethod", { clear = true })
      
      -- 离开插入模式时 -> 异步切回英文
      vim.api.nvim_create_autocmd("InsertLeave", {
        group = group,
        callback = switch_to_english,
      })
      
      -- 打开 Neovim 时 -> 自动切回英文
      vim.api.nvim_create_autocmd("VimEnter", {
        group = group,
        callback = switch_to_english,
      })
      
      -- 聚焦窗口时也切回英文 (防止切换窗口后状态错乱)
      vim.api.nvim_create_autocmd("FocusGained", {
        group = group,
        callback = switch_to_english,
      })
    end,
  },
}
