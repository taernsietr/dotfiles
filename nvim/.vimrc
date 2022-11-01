" VimPlug Calls ################################################################################## 
call plug#begin()
Plug 'itchyny/lightline.vim'                           " status bar
Plug 'airblade/vim-gitgutter'                          " displays git diff column
Plug 'morhetz/gruvbox'                                 " theme
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'                   " finder (req: popup, plenary)
Plug 'shinchu/lightline-gruvbox.vim'                   " lightline theme (req: lightline)
Plug 'neovim/nvim-lspconfig'
Plug 'ellisonleao/glow.nvim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
call plug#end()

" General Settings ###############################################################################
" set nowrap
set noerrorbells
set nohlsearch
set nobackup
set noshowmode
set termguicolors
set relativenumber
set number 
set tabstop=4 
set shiftwidth=4
set expandtab
set scrolloff=8
set completeopt=menuone,noselect
set showcmd
set showmatch
set incsearch " partial search results
set inccommand=split
set timeoutlen=200
set ttimeoutlen=200
set updatetime=50

filetype on
filetype plugin on
filetype indent on
syntax on

" Gruvbox
autocmd vimenter * ++nested colorscheme gruvbox
let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_underline = 1
let g:gruvbox_undercurl = 1

" Lightline
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

" Loading Lua plugins ############################################################################

lua << EOF

require('telescope').setup()

require'lspconfig'.bashls.setup{}

require'lspconfig'.html.setup{}
require'lspconfig'.cssls.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.tsserver.setup{}

require'lspconfig'.pyright.setup{}

require'lspconfig'.rust_analyzer.setup{}

EOF

" Keymaps ########################################################################################
let mapleader = " "

" Add lines above or below current line without switching mode
nnoremap oo m`o<Esc>``
nnoremap OO m`O<Esc>``

" Moving lines up or down with Alt + J/K
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Make these symbols create break points for better undo (Primeagen)
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap ! !<C-g>u
inoremap ? ?<C-g>u

" Center next search results & line joins (Primeagen)
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Select all buffer contents (similar to Ctrl+A)
nnoremap <Leader>a ggVG

" Copy to system clipboard
vnoremap <Leader>c "+y

" Navigate through buffers (next, previous, close)
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>d :bd<CR> 

" Split panes
" Reminder: C-w hjkl switches directionally between panes
nnoremap <Leader>v :vsp<CR>
nnoremap <Leader>h :sp<CR>

" Run current buffer directly
nnoremap <Leader>0 :! %:p<CR>

" Find files using Telescope command-line sugar
nnoremap <Leader>ff <CMD>Telescope find_files<CR>
nnoremap <Leader>fg <CMD>Telescope live_grep<CR>
nnoremap <Leader>fb <CMD>Telescope buffers<CR>
nnoremap <Leader>fh <CMD>Telescope help_tags<CR>

