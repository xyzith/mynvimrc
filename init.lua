-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- require vimrc
vim.cmd("so ~/.config/nvim/vimrc.d/vimrc.vim")

vim.g.clipboard = {
  name = "win32yank-wsl",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
  cache_enabled = true,
}

-- didsable newrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- auto cd to current folder
vim.cmd([[
  augroup FzfLuaCwd
    autocmd!
    autocmd BufEnter * execute 'cd '.expand('%:p:h')
  augroup END
]])
