-- General Settings ############################################################

local set = vim.opt

set.autoindent = true
set.completeopt = {'menu', 'preview', 'noinsert'}
set.cursorline = true
set.expandtab = true
set.foldmethod = 'expr'
set.foldminlines = 2
set.foldnestmax = 5
set.foldenable = false
set.hlsearch = false
set.inccommand = 'split'
set.number = true
set.relativenumber = true
set.scrolloff = 8
set.shiftwidth = 2
set.showmatch = true
set.showmode = false
set.tabstop = 2
set.termguicolors = true
set.timeoutlen = 200
set.ttimeoutlen = 200
set.updatetime = 50
set.wrap = false

vim.diagnostic.config({
    virtual_text = true
})

vim.cmd('set foldexpr=nvim_treesitter#foldexpr()') -- how to put this to Lua?
vim.cmd('filetype plugin on')

