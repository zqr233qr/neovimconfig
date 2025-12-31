return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        -- 恢复你最喜欢的行为：选的时候不改代码
        list = {
          selection = {
            preselect = true,
            auto_insert = false,
          },
        },
        -- 保持不自动加括号
        accept = { auto_brackets = { enabled = false } },
        ghost_text = { enabled = false },
      },

      -- 开启 Blink 自带的参数提示 (最稳)
      signature = { 
        enabled = true,
        window = { border = "rounded" },
      },

      -- 快捷键
      keymap = {
        ['<C-space>'] = { 'show', 'show_documentation', 'hide' },
        ['<CR>'] = { 'accept', 'fallback' },
        ['<Tab>'] = { 'select_next', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'fallback' },
        -- 手动触发参数提示 (如果你关了自动弹出)
        ['<C-k>'] = { 'show_signature', 'hide_signature', 'fallback' },
      },
    },
  },
}
