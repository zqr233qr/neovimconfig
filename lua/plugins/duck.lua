-- 在屏幕上生成一些小动物来回跑
return {
  "tamton-aquib/duck.nvim",
  config = function()
    -- 生成一只🦆
    vim.keymap.set("n", "<leader>dd", function()
      require("duck").hatch()
    end, {})
    -- 移除一只🦆
    vim.keymap.set("n", "<leader>dk", function()
      require("duck").cook()
    end, {})
    -- 生成🦆并指定🦀或🐈
    vim.keymap.set("n", "<leader>db", function()
      require("duck").hatch("🦀")
    end, {})
    vim.keymap.set("n", "<leader>dc", function()
      require("duck").hatch("🐈")
    end, {})
    -- 移除所有
    vim.keymap.set("n", "<leader>da", function()
      require("duck").cook_all()
    end, {})
  end,
}
