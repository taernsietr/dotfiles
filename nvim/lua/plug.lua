local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Theme & Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ellisonleao/gruvbox.nvim'

-- Mason (package manager)
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

-- lsp-zero: Autocompletion Engine
Plug 'hrsh7th/nvim-cmp'                       -- completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lua'

-- lsp-zero: Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug('VonHeikemen/lsp-zero.nvim', { branch = 'v3.x' })

-- Other plugins
Plug 'airblade/vim-gitgutter'                 -- displays git diff column
Plug('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && yarn install' })
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
