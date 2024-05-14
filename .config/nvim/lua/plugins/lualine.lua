return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local lualine = require("lualine")

    local colors = {
      -- accent colors
      PINK = "#f5c2e7",
      MAUVE = "#cba6f7",
      RED = "#f38ba8",
      MAROON = "#eba0ac",
      PEACH = "#fab387",
      YELLOW = "#f9e2af",
      GREEN = "#a6e3a1",
      TEAL = "#94e2d5",
      BLUE = "#89b4fa",
      LAVENDER = "#b4befe",
      -- background colors
      BG1 = "#1e1e2e",
      BG2 = "#181825",
      BG3 = "#11111b",
      L_BG1 = "#313244",
      L_BG2 = "#45475a",
      L_BG3 = "#585b70",
      FG1 = "#cdd6f4",
      FG2 = "#a6adc8",
      D_FG1 = "#11111b",
      D_FG2 = "#1e1e2e",
    }

    local onetheme = {
      normal = {
        a = { bg = colors.MAUVE, fg = colors.D_FG1, gui = "bold" },
        b = { bg = colors.L_BG1, fg = colors.MAUVE },
        c = { bg = colors.BG1, fg = colors.MAUVE },
      },
      insert = {
        a = { bg = colors.TEAL, fg = colors.BG1, gui = "bold" },
        b = { bg = colors.BG1, fg = colors.TEAL },
        c = { bg = colors.BG1, fg = colors.TEAL },
      },
      visual = {
        a = { bg = colors.BLUE, fg = colors.BG1, gui = "bold" },
        b = { bg = colors.BG1, fg = colors.BLUE },
        c = { bg = colors.BG1, fg = colors.BLUE },
      },
      command = {
        a = { bg = colors.YELLOW, fg = colors.BG1, gui = "bold" },
        b = { bg = colors.BG1, fg = colors.YELLOW },
        c = { bg = colors.BG1, fg = colors.YELLOW },
      },
      replace = {
        a = { bg = colors.RED, fg = colors.BG1, gui = "bold" },
        b = { bg = colors.BG1, fg = colors.RED },
        c = { bg = colors.BG1, fg = colors.RED },
      },
    }

    local function filetype_icon()
      local devicons = require("nvim-web-devicons")
      local icon, _ = devicons.get_icon(vim.fn.expand("%:t"), vim.fn.expand("%:e"))
      return icon
    end
    lualine.setup({
      options = {
        theme = onetheme,
        ignore_focus = {
          "neo-tree",
        },
        section_seperators = {
          left = "",
          right = "",
        },
        component_seperators = {
          left = "",
          right = "",
        },
      },
      sections = {
        -- left
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { "diagnostics" },
        -- right
        lualine_x = { "filename" },
        lualine_y = { filetype_icon },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
    })
  end,
}
