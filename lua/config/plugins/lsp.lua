return {
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    { 
      "neovim/nvim-lspconfig",
      dependencies = {
        {
          "folke/lazydev.nvim",
          ft = "lua", -- only load on lua files
          opts = {
            library = {
              -- See the configuration section for more details
              -- Load luvit types when the `vim.uv` word is found
              { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
          },
        },
      },
      config = function()
          local capabilities = require('blink.cmp').get_lsp_capabilities();
          local lsp = require('lspconfig');

          lsp.lua_ls.setup { capabilities = capabilities }
          lsp.ts_ls.setup { capabilities = capabilities }
          lsp.clangd.setup { capabilities = capabilities }
          lsp.sqls.setup { capabilities = capabilities }
      end
    }
  },
}
