-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>dc", ":call delete(expand('%')) | bdelete!")
vim.api.nvim_del_keymap("n", "<A-j>") -- remove fucking switch line
vim.keymap.set("n", "<leader>ac", ":Codeium Chat<CR>")
