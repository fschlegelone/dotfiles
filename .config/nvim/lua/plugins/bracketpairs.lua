return {
  "lukas-reineke/indent-blankline.nvim",
  tag = "v3.5.0",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  main = "ibl",
  opts = {
    indent = {
      char = "┊",
    },
  },
}
