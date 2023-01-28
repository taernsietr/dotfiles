local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Theme & Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ellisonleao/gruvbox.nvim' 

-- Other plugins
Plug 'airblade/vim-gitgutter'                 -- displays git diff column
Plug 'ellisonleao/glow.nvim'                  -- TUI markdown previewer
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'          -- finder (req: popup, plenary)

-- Language-related stuff
Plug 'neovim/nvim-lspconfig'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug('evanleck/vim-svelte', {branch = 'main'})
Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']})

vim.call('plug#end')
