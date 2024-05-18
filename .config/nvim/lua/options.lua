-- variables
local opt = vim.opt

-- general
opt.swapfile = false -- turn off swapfile
-- vim.g.loaded_netrw = 1 -- disable netrw file_explorer

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- use spaces instead of tabs
opt.autoindent = true -- copy indent from current line when starting new one

-- editor settings
opt.mouse = "" -- disable mouse
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position
-- lines
opt.cursorline = true -- highlight current line
opt.relativenumber = true -- relative line numbers
opt.number = true -- show line numbers
opt.wrap = false -- don't wrap lines
-- appearance
opt.termguicolors = true -- enable true color support
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register
vim.highlight.on_yank = true -- highlight yanked text

-- splits
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- disable some providers
vim.g.loaded_ruby_provider = 0 -- disable ruby provider
vim.g.loaded_perl_provider = 0 -- disable perl provider

-- mouse
