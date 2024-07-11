local lspconfig = require("lspconfig")
local lsp_zero = require("lsp-zero")
local cmp = require("cmp")
local cmp_action = lsp_zero.cmp_action()

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require("luasnip.loaders.from_vscode").lazy_load()
cmp.setup({
  sources = cmp.config.sources ({
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'luasnip' },
    { name = 'buffer' },
  }),
  mapping = cmp.mapping.preset.insert({
    ['<S-TAB>'] = cmp.mapping.select_prev_item({ behavior = select }),
    ['<TAB>'] = cmp.mapping.select_next_item({ behavior = select }),
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
    ['<C-y>'] = cmp.mapping.complete(),
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  formatting = lsp_zero.cmp_format({details = true})
})

cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  }),
  matching = { disallow_symbol_nonprefix_matching = false }
})

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "bashls",
    "cssls",
    "html",
    "lua_ls",
    "pyright",
    "rust_analyzer",
  },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
    rust_analyzer = function()
      lspconfig.rust_analyzer.setup({
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              features = "all",
            },
            diagnostics = {
              disabled = { "inactive-code", "unlinked-file" },
            },
            imports = {
              granularity = {
                group = "module",
              },
            },
            procMacro = {
              enable = true,
              ignored = {
                leptos_macro = { "component", "server" },
              },
            },
            hover = {
              show = {
                enumVariants = 20,
                fields = 5,
              },
              documentation = {
                keywords = {
                  enable = true,
                },
              },
            },
            check = {
              command = "clippy",
              features = "all",
            },
          },
        },
      })
    end,
  },
})

