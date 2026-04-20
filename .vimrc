if v:version < 802
  packadd! dracula
endif


" -- General --
set nocompatible
set termguicolors
syntax enable
colorscheme retrobox
filetype plugin indent on


" -- UI --
set number
set nowrap
set cursorline
set wildmenu
set laststatus=2
set fillchars+=vert:\ " No vsplit lines
set statusline=%<%t\ %y\ %m\ %r\ %=%l,%c\ %p%%
" set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
let &t_SI = "\e[6 q" " Insert mode = bar
let &t_SR = "\e[4 q" " Replace mode = underline
let &t_EI = "\e[2 q" " Normal mode = block
" No cursorline on inactive windows
augroup CursorLine
  autocmd!
  autocmd WinEnter * set cursorline
  autocmd WinLeave * set nocursorline
augroup END


" -- Mouse --
nnoremap <ScrollWheelUp> 3<C-y>
nnoremap <ScrollWheelDown> 3<C-e>
set mouse=a
set mousefocus
set scrolloff=3


" -- Editing --
set autoindent smartindent
set tabstop=4 shiftwidth=4 expandtab
set backspace=indent,eol,start
" Autoclose brackets
inoremap <expr> " getline('.')[col('.')-1] == '"' ? "\<Right>" : "\"\"\<Left>"
inoremap <expr> ' getline('.')[col('.')-1] == "'" ? "\<Right>" : "''\<Left>"
inoremap <expr> ( getline('.')[col('.')-1] == ')' ? "\<Right>" : "()\<Left>"
inoremap <expr> { getline('.')[col('.')-1] == '}' ? "\<Right>" : "{}\<Left>"
inoremap <expr> [ getline('.')[col('.')-1] == ']' ? "\<Right>" : "[]\<Left>"
vnoremap <leader>y :w !wl-copy<CR>


" -- Search --
set ignorecase smartcase
set incsearch
set hlsearch


" -- Performance --
set lazyredraw
set ttyfast


" -- Files --
set hidden


" -- Clipboard --
set clipboard=unnamedplus


" -- netrw --
let g:netrw_liststyle=3    " Use tree-style view
let g:netrw_browse_split=4 " Open directories in current window
let g:netrw_banner=0       " Hide banner at the top
let g:netrw_fastbrowse=1   " Open files with Enter (default is 'o')
let g:netrw_keepdir=1      " Keep cursor on file after opening
let g:netrw_list_hide = '^\.\|~$\|__pycache__$\|\.git$'
autocmd FileType netrw vertical resize 20    " Auto resize netrw


" -- Custom --
"  Remap U being the worst thing in the world
nnoremap U <C-r>
" Center when jumping
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap ' #zz
let mapleader=" "
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>e :Vex<CR>
nnoremap <leader>n :set relativenumber!<CR>
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>c :'<,'>s/\v(\d+),\s*(\d+),\s*(\d+)/\=submatch(1)/24 . ", " . submatch(2)/16 . ", " . submatch(3)/16/<CR>

nnoremap <leader>b gUU
\ :s/./& /g<CR>
\ :center 70<CR>
\ :s/$/\=repeat(' ', 68 - len(substitute(getline('.'), '\t', ' ', 'g')))/<CR>
\ 0i!<Esc>$A!<Esc>O!!<Esc>68i=<Esc>jo!!<Esc>68i=<Esc>
