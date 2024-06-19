local builtin = require('telescope.builtin')
local km = vim.keymap

-- Keymaps #############################################################################
vim.g.mapleader = " "

-- Add lines above or below current line without switching mode
km.set("n", "oo", "m`o<Esc>``j")
km.set("n", "OO", "m`O<Esc>``k")

-- Moving lines up or down with Alt + J/K
km.set("n", "<A-j>", ":m .+1<CR>==")
km.set("n", "<A-k>", ":m .-2<CR>==")
km.set("i", "<A-j> <Esc>:m", ".+1<CR>==gi")
km.set("i", "<A-k> <Esc>:m", ".-2<CR>==gi")
km.set("v", "<A-j> :m", "'>+1<CR>gv=gv")
km.set("v", "<A-k> :m", "'<-2<CR>gv=gv")

-- Make these symbols create break points for better undo (Primeagen)
km.set("i", ",", ",<C-g>u")
km.set("i", ".", ".<C-g>u")
km.set("i", "!", "!<C-g>u")
km.set("i", "?", "?<C-g>u")

-- Center next search results & line joins (Primeagen)
km.set("n", "n", "nzzzv")
km.set("n", "N", "Nzzzv")
km.set("n", "J", "mzJ`z")

-- Copy to system clipboard
km.set("v", "<Leader>c", "\"+y")

-- Convert C-c to Escape (for stuff like multiline I)
km.set("i", "<A-c>", "<Esc>")

-- Navigate through buffers (next, previous, close)
km.set("n", "<Leader>n", ":bn<CR>")
km.set("n", "<Leader>p", ":bp<CR>")
km.set("n", "<Leader>d", ":bd<CR>")

-- Split panes
-- Reminder: C-w hjkl switches directionally between panes
km.set("n", "<Leader>v", ":vsp<CR>")
km.set("n", "<Leader>h", ":sp<CR>")

-- Telescope
km.set("n", "<Leader>ff", builtin.find_files, {})
km.set("n", "<Leader>fg", builtin.live_grep, {})
km.set("n", "<Leader>fb", builtin.buffers, {})
km.set("n", "<Leader>fh", builtin.help_tags, {})

-- LSP Diagnostics
km.set("n", "<Leader>i", vim.diagnostic.open_float)

