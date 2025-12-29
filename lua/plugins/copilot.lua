return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            -- 强制绑定 Tab 为接受建议
            accept = "<Tab>",
            -- 你也可以试试 Ctrl+l (更不容易冲突)
            -- accept = "<C-l>",
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
          },
        },
        panel = {
          enabled = true,
          auto_refresh = true,
          keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            -- 在 Panel 里按回车接受
            accept = "<CR>",
            refresh = "gr",
            open = "<M-CR>",
          },
        },
      })
    end,
  },
}
