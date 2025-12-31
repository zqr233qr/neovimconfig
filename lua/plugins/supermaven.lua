return {
  {
    "supermaven-inc/supermaven-nvim",
    enabled = false, -- 暂时禁用，让位给 Fittencode
    opts = {
      keymaps = {
        accept_suggestion = "<Tab>",
        accept_word = "<M-l>",
        clear_suggestion = "<M-x>",
      },
      ignore_filetypes = { 
        cpp = true, 
        markdown = true,
      }, 
      color = {
        suggestion_color = "#888888",
        cterm = 244,
      },
      -- 显式禁用任何对 cmp 的注入 (虽然 supermaven 默认就没加)
      disable_inline_completion = false,
      disable_keymaps = false,
    },
  },
}