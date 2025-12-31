local function header_banner()
  return [[
 ▄▄▄   ▄▄  ▄▄    ▄▄   ▄▄▄▄▄▄   ▄▄▄  ▄▄▄ 
 ███   ██  ▀██  ██▀   ▀▀██▀▀   ███  ███ 
 ██▀█  ██   ██  ██      ██     ████████ 
 ██ ██ ██   ██  ██      ██     ██ ██ ██ 
 ██  █▄██    ████       ██     ██ ▀▀ ██ 
 ██   ███    ████     ▄▄██▄▄   ██    ██ 
 ▀▀   ▀▀▀    ▀▀▀▀     ▀▀▀▀▀▀   ▀▀    ▀▀ 
 ]]
end

return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = header_banner(),
        },
      },
      image = {
        enabled = true,
      },
      picker = {
        sources = {
          explorer = {
            hidden = true,
            ignored = true,
          },
          files = {
            hidden = true,
            ignored = true,
          },
          grep = {
            hidden = true,
            ignored = true,
          },
        },
      },
    },
  },
}
