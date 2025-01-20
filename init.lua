-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- require vimrc
vim.cmd("so ~/.config/nvim/vimrc.d/vimrc.vim")
