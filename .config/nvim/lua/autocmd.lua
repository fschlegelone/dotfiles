local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- autocmd("TextYankPost", {
--   callback = function()
--     vim.highlight.on_yank()
--   end,
--   desc = "Highlight yanked text",
--   group = augroup("yank", { clear = true }),
-- })
