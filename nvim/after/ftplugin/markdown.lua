local opt = vim.opt_local
local set = vim.keymap.set

-- Thanks nocksock#0001 @ the ThePrimeagen Discord for the stuff below
opt.textwidth = 80
opt.linebreak = true
opt.wrap = true
opt.listchars:append({ precedes = "<", extends = ">" })
opt.formatoptions:append("t")

-- Thanks bcampolo @ github for the stuff below
-- Allow j/k when navigating wrapped lines
set("n", "j", "gj")
set("n", "k", "gk")
