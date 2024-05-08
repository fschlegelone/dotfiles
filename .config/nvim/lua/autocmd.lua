local autocmd = vim.api.nvim_create_autocmd 
local augroup = vim.api.nvim_create_augroup

local treesitter_group = augroup("treesitter-group", {})

-- run TSUpdate after lazy initialization
autocmd("User", {
  group = treesitter_group,
  pattern = "LazyDone",
   once = true,
   callback = function()
     vim.cmd('silent TSUpdate')
   end,
 })
