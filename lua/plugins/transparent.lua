return {
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    opts = {
      extra_groups = {
        "NormalFloat", 
        "NeoTreeNormal", "NeoTreeNormalNC",
        "TelescopeNormal", "TelescopeBorder",
        "LazyNormal", 
        "MasonNormal",
      },
    },
    config = function(_, opts)
      require("transparent").setup(opts)
      require("transparent").clear_prefix("NeoTree")
      require("transparent").clear_prefix("BufferLine")
    end,
  },
}