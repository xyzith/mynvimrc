-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- fucking bufferline
vim.api.nvim_set_keymap("n", "gt", ":BufferLineCycleNext<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "gT", ":BufferLineCyclePrev<cr>", { noremap = true })

vim.cmd("colorscheme everforest")

require("notify").setup({
  background_colour = "#1a1b26",
})

-- Tabnine
require("tabnine").setup({
  disable_auto_comment = true,
  accept_keymap = "<Tab>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = { gui = "#808080", cterm = 244 },
  exclude_filetypes = { "TelescopePrompt" },
  log_file_path = nil, -- absolute path to Tabnine log file
})
