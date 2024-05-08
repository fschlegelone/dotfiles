return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"BurntSushi/ripgrep",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		-- TODO: uncomment as soon as trouble is fixed
		-- local trouble = require("trouble.providers.telescope")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						-- ["<C-t>"] = trouble.smart_open_with_trouble,
					},
				},
			},
		})

		telescope.load_extension("fzf")
	end,
}
