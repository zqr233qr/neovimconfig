return {
  {
    "luozhiya/fittencode.nvim",
    enabled = true,
    opts = {
      use_default_keymaps = false,
      keymaps = {
        inline = {
          ["<TAB>"] = "accept_all_suggestions",
          ["<M-l>"] = "accept_line",
        },
        chat = {
          ["q"] = "close",
          ["[c"] = "goto_previous_conversation",
          ["]c"] = "goto_next_conversation",
          ["c"] = "copy_conversation",
          ["C"] = "copy_all_conversations",
          ["d"] = "delete_conversation",
          ["D"] = "delete_all_conversations",
        },
      },
    },
  },
}
