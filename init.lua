-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- require vimrc
vim.cmd("so ~/.config/nvim/vimrc.d/vimrc.vim")

-- ignore test
require("telescope").setup({
  defaults = {
    file_ignore_patterns = { "tests/.*" },
  },
})

require("lspconfig").biome.setup({
  cmd = { "yarn", "biome", "lsp-proxy" },
})
