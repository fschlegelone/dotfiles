return {
  "stevearc/dressing.nvim",
  event = "VeryLazy",
  config = function()
    local dressing = require("dressing")
    dressing.setup({
      enabled = true,
      nui = {
        position = "50%",
        size = nil,
        relative = "editor",
        border = {
          style = "rounded",
        },
        buf_options = {
          swapfile = false,
          filetype = "DressingSelect",
        },
        win_options = {
          winblend = 0,
        },
        max_width = 80,
        max_height = 40,
        min_width = 40,
        min_height = 10,
      },
    })
  end
}
