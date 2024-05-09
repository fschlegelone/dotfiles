return {
  "renerocksai/telekasten.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local telekasten = require("telekasten")
    telekasten.setup({
      home = vim.fn.expand("~/nas/notes"), -- notes home directory
    })
  end
}
