local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'itchyny/lightline.vim'                           -- status bar
Plug 'airblade/vim-gitgutter'                          -- displays git diff column
Plug 'morhetz/gruvbox'                                 -- theme
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'                   -- finder (req: popup, plenary)
Plug 'shinchu/lightline-gruvbox.vim'                   -- lightline theme (req: lightline)
Plug 'neovim/nvim-lspconfig'
Plug 'ellisonleao/glow.nvim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug('evanleck/vim-svelte', {branch = 'main'})
Plug('nvim-treesitter/nvim-treesitter', {['do' = vim.fn[':TSUpdate']})

vim.call('plug#end')
