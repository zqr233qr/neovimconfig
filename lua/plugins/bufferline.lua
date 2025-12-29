return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        -- 开启序号显示
        -- "ordinal": 显示 Buffer 的相对序号 (1, 2, 3...)
        -- "buffer_id": 显示 Buffer 的内部 ID (不推荐，会变)
        numbers = "ordinal", 
        
        -- 美化样式
        separator_style = "slant", -- 斜角分割线，看起来更现代
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },
}
