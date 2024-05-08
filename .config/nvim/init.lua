-- LEADER KEY
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- IMPORTS
require("options")

local lazyopts = require("lazyopts")
-- LAZY
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "plugins" } }, {
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})


require("keymaps")
require("autocmd")
