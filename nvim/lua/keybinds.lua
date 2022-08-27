-- Keymaps ########################################################################################
let mapleader = " "

-- Add lines above or below current line without switching mode
nnoremap oo m`o<Esc>``
nnoremap OO m`O<Esc>``

-- Moving lines up or down with Alt + J/K
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

-- Make these symbols create break points for better undo (Primeagen)
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap ! !<C-g>u
inoremap ? ?<C-g>u

-- Center next search results & line joins (Primeagen)
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

-- Select all buffer contents (similar to Ctrl+A)
nnoremap <Leader>a ggVG

-- Copy to system clipboard
vnoremap <Leader>c "+y

-- Navigate through buffers (next, previous, close)
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>d :bd<CR> 

-- Split panes
-- Reminder: C-w hjkl switches directionally between panes
nnoremap <Leader>v :vsp<CR>
nnoremap <Leader>h :sp<CR>

-- Run current buffer directly
nnoremap <Leader>0 :! %:p<CR>

-- Find files using Telescope command-line sugar
nnoremap <Leader>ff <CMD>Telescope find_files<CR>
nnoremap <Leader>fg <CMD>Telescope live_grep<CR>
nnoremap <Leader>fb <CMD>Telescope buffers<CR>
nnoremap <Leader>fh <CMD>Telescope help_tags<CR>

