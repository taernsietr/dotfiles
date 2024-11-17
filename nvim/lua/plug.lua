local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Mason (package manager)
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

-- Theme & Status Bar
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'Biscuit-Theme/nvim'

-- lsp-zero: Autocompletion Engine
Plug 'hrsh7th/nvim-cmp'                       -- completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lua'

-- lsp-zero: Snippets
Plug('L3MON4D3/LuaSnip', { tag = 'v2.*', ['do'] = vim.fn[':make install_jsregexp'] })
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

-- Other plugins
Plug('VonHeikemen/lsp-zero.nvim', { branch = 'v3.x' })
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'                 -- displays git diff column
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'          -- finder (req: popup, plenary)

-- Language-related stuff
Plug 'neovim/nvim-lspconfig'
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = vim.fn[':TSUpdate'] })

-- Plugins under testing
Plug 'norcalli/nvim-colorizer.lua'

vim.call('plug#end')
