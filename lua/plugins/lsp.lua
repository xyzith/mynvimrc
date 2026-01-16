return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",
        "css-lsp",
        "eslint-lsp",
        "gopls",
        "helm-ls",
        "html-lsp",
        "json-lsp",
        "jdtls",
        "marksman",
        "phpactor",
        "typescript-language-server",
        "vue-language-server",
      },
    },
  },
  {
    "nvim-lspconfig",
    keys = {
      { "<leader>ce", "<cmd>EslintFixAll<cr>", desc = "ESLint Fix All" },
    },
    opts = {
      setup = {
        volar = function()
          require("lazyvim.util").lsp.on_attach(function(client, _)
            if client.name == "volar" then
              client.server_capabilities.documentFormattingProvider = false
            end
          end)
          local lspconfig = require("lspconfig")
          lspconfig.tsserver.setup({
            on_attach = function(client, bufnr)
              client.server_capabilities.documentFormattingProvider = false
            end,
          })
          lspconfig.cssls.setup({
            on_attach = function(client, bufnr)
              client.server_capabilities.documentFormattingProvider = false
            end,
          })
        end,
      },
    },
  },
}
