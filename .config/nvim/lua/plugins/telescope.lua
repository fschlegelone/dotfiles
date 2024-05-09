return {
	"nvim-telescope/telescope.nvim",
  tag = "0.1.6",
	dependencies = {
    {
    "nvim-telescope/telescope-fzf-native.nvim", 
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
    },
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"BurntSushi/ripgrep",
    "MunifTanjim/nui.nvim",
    "nvim-telescope/telescope-ui-select.nvim"
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
    local themes = require("telescope.themes")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
        -- keymaps (inside of telescope windows)
        mappings = {
					i = {
					},
          n = {
            ["q"] = actions.close,
            ["<C-d>"] = actions.delete_buffer + actions.move_to_top, -- delete(close) selected buffer 
          },
				},
			},
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
        ["ui-select"] = {
          themes.get_dropdown {
            -- opts
          }
        }
      },
		})

    telescope.load_extension("fzf") -- load fzf extension
    telescope.load_extension("ui-select") -- load ui-select extension
	end,
}
