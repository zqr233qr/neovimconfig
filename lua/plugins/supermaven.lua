return {
  {
    "supermaven-inc/supermaven-nvim",
    enabled = true, -- 改为 false 即可彻底禁用 Supermaven
    opts = {
      keymaps = {
        accept_suggestion = "<Tab>",
        accept_word = "<M-l>",
        -- clear_suggestion 已移除
      },
      -- 忽略以下文件类型的补全
      ignore_filetypes = { 
        cpp = true, 
        markdown = true, -- 示例：在写文档时不开启补全
      }, 
      color = {
        suggestion_color = "#888888",
        cterm = 244,
      },
      disable_inline_completion = false,
      disable_keymaps = false,
    },
  },
}