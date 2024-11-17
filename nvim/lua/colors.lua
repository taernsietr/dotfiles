-- Gruvbox
require('biscuit').setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
      strings = true,
      comments = true,
      keywords = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true
})

-- augroup user_colors
--   autocmd!
--   autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
-- augroup END

local transparency = vim.api.nvim_create_autocmd({"ColorScheme"}, {
  pattern = { "*" },
  command = "highlight Normal ctermbg=NONE guibg=NONE"
})

-- vim.cmd('colorscheme gruvbox')
vim.cmd('colorscheme biscuit')
vim.g.airline_theme = 'base16_gruvbox_dark_hard'

