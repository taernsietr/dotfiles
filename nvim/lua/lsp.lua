require'lspconfig'.bashls.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.cssls.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.svelte.setup{}
require'lspconfig'.tsserver.setup{
    filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
    root_dir = function() return vim.loop.cwd() end
}
