require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "help", "rust", "svelte", "scss", "yaml", "typescript", "toml", "sql", "sparql", "regex", "python", "markdown", "json", "html", "javascript", "gitignore", "gitcommit", "git_rebase", "fish", "dockerfile", "diff", "css", "bash" },
  sync_install = false,
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,
  ignore_install = {},
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
} 
