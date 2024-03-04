-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- require vimrc
vim.cmd("so ~/.config/nvim/vimrc.d/vimrc.vim")

-- fix notify transparent warning
require("notify").setup({
  background_colour = "#1a1b26",
})

-- ignore test
require("telescope").setup({
  defaults = {
    file_ignore_patterns = { "tests/.*" },
  },
})

require("lspconfig").biome.setup({
  cmd = { "yarn", "biome", "lsp-proxy" },
})
