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
          local lsp = require('lspconfig');

          lsp.lua_ls.setup {}
          lsp.ts_ls.setup {}
          lsp.clangd.setup {}
          lsp.sqls.setup {}
      end
    }
  },
}