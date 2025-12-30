return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "frappe", -- 锁定为你喜欢的 Frappe 风格
      transparent_background = true, -- 强制开启透明支持，完美配合你的 UI
      show_end_of_buffer = false,
      integration = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
        mini = {
          enabled = true,
          indentscope_color = "lavender",
        },
        neotree = true,
        markdown = true,
        which_key = true,
      },
    },
  },
}
