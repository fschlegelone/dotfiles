local keymap = vim.keymap.set
local nv_keymap = vim.api.nvim_set_keymap

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
keymap("n", "<leader>%", "<cmd> source % <CR>", { desc = "Reload config" }) -- reload config

keymap("n", "<leader>/", "<cmd>nohl<CR>", { desc = "Cancel find & replace" }) -- cancel find & replace

-- neotree
keymap("n", "<leader>ee", "<cmd>Neotree toggle<CR>", { desc = "Toggle Neotree" }) -- toggle neotree

-- increment/decrement numbers
keymap("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
-- focus next window (left/bottom/top/right)
keymap("n", "<leader>h", "<C-w>h", { desc = "Focus left window" })
keymap("n", "<leader>j", "<C-w>j", { desc = "Focus bottom window" })
keymap("n", "<leader>k", "<C-w>k", { desc = "Focus top window" })
keymap("n", "<leader>l", "<C-w>l", { desc = "Focus right window" })
-- tabs
keymap("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap("n", "<leader>tq", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap("n", "<leader>tl", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap("n", "<leader>th", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap("n", "<leader>tb", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- PLUGIN KEYMAPS

-- telescope 
local builtin = require("telescope.builtin")
keymap("n", "<leader>ff", builtin.find_files, { desc = "Telescope: Fuzzy find files in cwd" })
keymap("n", "<leader>fg", builtin.live_grep, { desc = "Telescope: Find string in cwd" })
keymap("n", "<leader>fb", builtin.buffers, { desc = "Telescope: Find buffers" })
keymap("n", "<leader>fh", builtin.help_tags, { desc = "Telescope: Find help tags" })
keymap("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Telescope: Fuzzy find recent files" })
keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Telescope: Find string under cursor in cwd" })
-- spectre (find + replace)
keymap('n', '<leader>rr', '<cmd>lua require("spectre").toggle()<CR>', { desc = "Toggle Spectre" })
keymap('n', '<leader>rw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', { desc = "Search current word" })
keymap('v', '<leader>rw', '<esc><cmd>lua require("spectre").open_visual()<CR>', { desc = "Search current word" })
keymap('n', '<leader>rf', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', { desc = "Search on current file" })
-- telekasten (notes) 
keymap("n", "<leader>z", "<cmd>Telekasten panel<CR>", { desc = "Telekasten: open panel" })
keymap("n", "<leader>zn", "<cmd>Telekasten new_note<CR>", { desc = "Telekasten: new note" })
keymap("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>", { desc = "Telekasten: find notes" })
keymap("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>", { desc = "Telekasten: live_grep in notes" })
keymap("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>", { desc = "Telekasten: todays notes" })
keymap("n", "<leader>zc", "<cmd>Telekasten show_calendar<CR>", { desc = "Telekasten: show calendar" })
keymap("n", "<leader>zt", "<cmd>Telekasten toggle_todo<CR>", { desc = "Telekasten: toggle todo status of a line" })
keymap({ "n", "v" }, "<leader>zi", "<cmd>Telekasten insert_img_link<CR>", { desc = "Telekasten: insert image link" })
keymap({ "n", "v" }, "<leader>zl", "<cmd>Telekasten follow_link<CR>", { desc = "Telekasten: follow link" })

-- keymap("i", "[[", "<cmd>Telekasten insert_link<CR>", { desc = "Telekasten: automatically insert link when typing [[")
