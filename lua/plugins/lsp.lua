return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- 开启 Insert 模式下的实时诊断更新
      diagnostics = {
        update_in_insert = true,
      },
      servers = {
        gopls = {
          settings = {
            gopls = {
              -- 关键设置：关闭占位符
              -- 这样 gopls 发送的补全就是 "Println" 而不是 "Println(a ...any)"
              usePlaceholders = false,
              
              -- 其他推荐配置
              analyses = {
                unusedparams = true,
              },
              staticcheck = true,
            },
          },
        },
      },
    },
  },
}
