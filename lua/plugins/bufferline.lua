return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        -- 开启序号显示
        numbers = "ordinal", 
        
        -- 简约风格设置
        separator_style = "thin", -- 改为细线，非常适合透明背景
        show_buffer_close_icons = false,
        show_close_icon = false,
        
        -- 视觉优化
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        
        -- 确保与透明背景融合
        highlights = {
          fill = {
            bg = "none",
          },
          separator = {
            fg = "#3b4261", -- 细线的颜色，可以根据需要微调
            bg = "none",
          },
        },
      },
    },
  },
}