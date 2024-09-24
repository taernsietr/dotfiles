local builtin = require('telescope.builtin')
local set = vim.keymap.set

-- Keymaps #############################################################################
vim.g.mapleader = " "

-- Add lines above or below current line without switching mode
set("n", "oo", "m`o<Esc>``j")
set("n", "OO", "m`O<Esc>``k")

-- Moving lines up or down with Alt + J/K
set("n", "<A-j>", ":m .+1<CR>==")
set("n", "<A-k>", ":m .-2<CR>==")
set("i", "<A-j> <Esc>:m", ".+1<CR>==gi")
set("i", "<A-k> <Esc>:m", ".-2<CR>==gi")
set("v", "<A-j> :m", "'>+1<CR>gv=gv")
set("v", "<A-k> :m", "'<-2<CR>gv=gv")

-- Make these symbols create break points for better undo (Primeagen)
set("i", ",", ",<C-g>u")
set("i", ".", ".<C-g>u")
set("i", "!", "!<C-g>u")
set("i", "?", "?<C-g>u")

-- Center next search results & line joins (Primeagen)
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")
set("n", "J", "mzJ`z")

-- Copy to system clipboard
set("v", "<Leader>c", "\"+y")

-- Convert C-c to Escape (for stuff like multiline I)
set("i", "<A-c>", "<Esc>")
set("i", "<C-c>", "<Esc>")

-- Navigate through buffers (next, previous, close)
set("n", "<Leader>n", ":bn<CR>")
set("n", "<Leader>p", ":bp<CR>")
set("n", "<Leader>d", ":bd<CR>")

-- Split panes
-- Reminder: C-w hjkl switches directionally between panes
set("n", "<Leader>v", ":vsp<CR>")
set("n", "<Leader>h", ":sp<CR>")

-- Telescope
set("n", "<Leader>ff", builtin.find_files, {})
set("n", "<Leader>fg", builtin.live_grep, {})
set("n", "<Leader>fb", builtin.buffers, {})
set("n", "<Leader>fh", builtin.help_tags, {})

-- LSP Diagnostics
set("n", "<Leader>i", vim.diagnostic.open_float)

