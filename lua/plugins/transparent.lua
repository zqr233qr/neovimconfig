return {
  {
    "xiyaowong/transparent.nvim",
    lazy = false, -- 启动即加载
    opts = {
      -- 想要排除透明的组 (这里设置为空，即全部透明)
      extra_groups = {
        "NormalFloat", -- 浮动窗口
        "NeoTreeNormal", "NeoTreeNormalNC", -- NeoTree 背景
        "NvimTreeNormal", 
        "TelescopeNormal", "TelescopeBorder", -- Telescope
        "LazyNormal", 
        "MasonNormal",
      },
      exclude_groups = {}, -- 可以在这里指定不想透明的部分
    },
    config = function(_, opts)
      require("transparent").setup(opts)
      -- 自动清除背景色
      require("transparent").clear_prefix("NeoTree")
      require("transparent").clear_prefix("BufferLine")
    end,
  },
}
