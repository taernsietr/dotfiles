-- General Settings ############################################################

local set = vim.opt

set.autoindent = false
set.backup = false 
set.completeopt = menuone, preview, noinsert, noselect
set.expandtab = true
set.foldminlines = 2
set.foldnestmax = 5
set.foldmethod = 'expr'
set.hlsearch = false 
set.inccommand = split
set.number = true
set.relativenumber = true
set.scrolloff = 8
set.shiftwidth = 4
set.showmatch = true
set.showmode = false
set.tabstop = 4 
set.termguicolors = true
set.timeoutlen = 200
set.ttimeoutlen = 200
set.updatetime = 50
set.wrap = false

vim.cmd('set foldexpr=nvim_treesitter#foldexpr()') -- how to put this to Lua?
vim.cmd('filetype plugin on')

