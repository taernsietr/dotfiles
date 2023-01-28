-- Keymaps #############################################################################
vim.g.mapleader = " "

-- Add lines above or below current line without switching mode
vim.keymap.set("n", "oo", "m`o<Esc>``")
vim.keymap.set("n", "OO", "m`O<Esc>``")

-- Moving lines up or down with Alt + J/K
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("i", "<A-j> <Esc>:m", ".+1<CR>==gi")
vim.keymap.set("i", "<A-k> <Esc>:m", ".-2<CR>==gi")
vim.keymap.set("v", "<A-j> :m", "'>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k> :m", "'<-2<CR>gv=gv")

-- Make these symbols create break points for better undo (Primeagen)
vim.keymap.set("i", ",", ",<C-g>u")
vim.keymap.set("i", ".", ".<C-g>u")
vim.keymap.set("i", "!", "!<C-g>u")
vim.keymap.set("i", "?", "?<C-g>u")

-- Center next search results & line joins (Primeagen)
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "J", "mzJ`z")

-- Select all buffer contents (similar to Ctrl+A)
vim.keymap.set("n", "<Leader>a", "ggVG")

-- Copy to system clipboard
vim.keymap.set("v", "<Leader>c", "\"+y")

-- Navigate through buffers (next, previous, close)
vim.keymap.set("n", "<Leader>n", ":bn<CR>")
vim.keymap.set("n", "<Leader>p", ":bp<CR>")
vim.keymap.set("n", "<Leader>d", ":bd<CR>")

-- Split panes
-- Reminder: C-w hjkl switches directionally between panes
vim.keymap.set("n", "<Leader>v", ":vsp<CR>")
vim.keymap.set("n", "<Leader>h", ":sp<CR>")

-- Run current buffer directly
vim.keymap.set("n", "<F5> :!", "%:p<CR>")

-- Telescope
vim.keymap.set("n", "<Leader>ff <CMD>Telescope", "find_files<CR>")
vim.keymap.set("n", "<Leader>fg <CMD>Telescope", "live_grep<CR>")
vim.keymap.set("n", "<Leader>fb <CMD>Telescope", "buffers<CR>")
vim.keymap.set("n", "<Leader>fh <CMD>Telescope", "help_tags<CR>")

