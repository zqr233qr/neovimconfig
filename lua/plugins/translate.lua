return {
  {
    "uga-rosa/translate.nvim",
    config = function()
      require("translate").setup({
        default = {
          command = "translate_shell", -- 默认使用 translate-shell (trans)
          output = "floating", -- 默认输出到浮动窗口
        },
        preset = {
          output = {
            split = {
              min_size = 8,
            },
          },
        },
      })

      -- 快捷键配置
      local map = vim.keymap.set
      
      -- 翻译选中内容 (Visual Mode)
      map("v", "<leader>t", ":Translate ZH -output=floating<CR>", { desc = "Translate to Chinese (Popup)" })
      map("v", "<leader>T", ":Translate EN -output=floating<CR>", { desc = "Translate to English (Popup)" })
      
      -- 翻译当前单词 (Normal Mode)
      map("n", "<leader>t", "viw:Translate ZH -output=floating<CR>", { desc = "Translate Word to Chinese" })
      map("n", "<leader>T", "viw:Translate EN -output=floating<CR>", { desc = "Translate Word to English" })
    end,
  },
}
