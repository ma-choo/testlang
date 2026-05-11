local map = vim.keymap.set

vim.g.mapleader = " "

-- Autoclose brackets
--map("i", '"',
--    'getline(".")[col(".")-1] == \'"\' ? "<Right>" : "\\"\\"<Left>"',
--    { expr = true })

--map("i", "'",
--    "getline('.')[col('.')-1] == \"'\" ? '<Right>' : \"''<Left>\"",
--    { expr = true })

--map("i", "(",
--    "getline('.')[col('.')-1] == ')' ? '<Right>' : '()<Left>'",
--    { expr = true })

--map("i", "{",
--    "getline('.')[col('.')-1] == '}' ? '<Right>' : '{}<Left>'",
--    { expr = true })

--map("i", "[",
--    "getline('.')[col('.')-1] == ']' ? '<Right>' : '[]<Left>'",
--    { expr = true })

-- Redo
map("n", "U", "<C-r>")

-- Center search results
map("n", "n", "nzz")
map("n", "N", "Nzz")
map("n", "*", "*zz")
map("n", "#", "#zz")

-- Leader
map("n", "<leader><space>", ":nohlsearch<CR>")
map("n", "<leader>e", ":Vex<CR>")
map("n", "<leader>t", ":tabnew<CR>")
map("n", "<leader>n", ":set relativenumber!<CR>")

-- Window movement
map("n", "<leader>h", "<C-w>h")
map("n", "<leader>j", "<C-w>j")
map("n", "<leader>k", "<C-w>k")
map("n", "<leader>l", "<C-w>l")
map("n", "<leader>r", "<C-w>r")

map("n", "<leader>s", ":vsplit<CR>")

map("v", "Y", "y$")
map("v", "<leader>y", ":w !wl-copy<CR>")


