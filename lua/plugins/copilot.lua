return {
  {
    "zbirenbaum/copilot.lua",
    enabled = false, -- 已切换到 Supermaven
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true, -- 自动触发
        keymap = {
          -- 核心：强制绑定 Tab 接受
          accept = "<Tab>",
          -- 启用接受下一个单词的功能
          accept_word = "<M-l>", 
          accept_line = false,
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      panel = {
        enabled = true,
        auto_refresh = true,
        -- 注意：copilot.lua 插件目前的 panel 数量限制是由这个参数控制的
        -- 虽然官方主要靠后台生成，但我们可以通过 UI 限制
      },
    },
  },
}
