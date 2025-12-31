return {
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        -- 彻底禁用 Noice 的参数提示接管
        signature = {
          enabled = false,
          auto_open = { enabled = false },
        },
        -- 可选：如果你连文档悬浮窗 (Hover) 也不想让 Noice 管，也可以在这里禁
        -- hover = { enabled = false },
      },
    },
  },
}
