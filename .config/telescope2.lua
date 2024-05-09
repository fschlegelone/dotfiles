return {
  { 
    "nvim-telescope/telescope-fzf-native.nvim", 
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
    config = function()
      local fzf = require('fzf_lib')
      local slab = fzf.allocate_slab()
      local pattern_obj = fzf.parse_pattern(pattern, case_mode, fuzzy)
      local score = fzf.get_score(line, pattern_obj, slab)
      local pos = fzf.get_pos(line, pattern_obj, slab)
      fzf.free_pattern(pattern_obj)
      fzf.free_slab(slab)
    end,
  },
  {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
--    {
      "nvim-telescope/telescope-fzf-native.nvim", 
--      build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build" 
--    },
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"BurntSushi/ripgrep",
    "MunifTanjim/nui.nvim"
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
        -- keymaps (inside of telescope windows)
        mappings = {
					i = {
					},
          n = {
            ["<q>"] = actions.close,
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
      },
		})

    -- load fzf extension
    require("telescope").load_extension("fzf")


	end,
  },
}
