local opt = vim.opt
local g = vim.g

-- General
opt.termguicolors = true
vim.cmd.colorscheme("catppuccin")

-- UI
opt.number = true
opt.wrap = false
opt.cursorline = true
opt.wildmenu = true
opt.laststatus = 2

opt.fillchars:append({ vert = " " })

vim.opt.list = true
vim.opt.listchars = {
    tab = "│ ",
    leadmultispace = "│   ",
    trail = "·",
}

-- Mouse
opt.mouse = "a"
opt.mousefocus = true
opt.scrolloff = 3

-- Editing
opt.autoindent = true
opt.smartindent = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.backspace = {
    "indent",
    "eol",
    "start",
}

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

-- Performance
opt.lazyredraw = true

-- Files
opt.hidden = true

-- Clipboard
opt.clipboard = "unnamedplus"

-- netrw
g.netrw_liststyle = 3
g.netrw_browse_split = 4
g.netrw_banner = 0
g.netrw_fastbrowse = 1
g.netrw_keepdir = 1
g.netrw_preview = 1
g.netrw_list_hide = [[^\.\|~$\|__pycache__$\|\.git$]]

vim.api.nvim_create_autocmd("FileType", {
    pattern = "netrw",
    callback = function()
        vim.cmd("vertical resize 20")
    end,
})
