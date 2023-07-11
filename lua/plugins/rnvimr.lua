return {
  "kevinhwang91/rnvimr",
  config = function()
    vim.api.nvim_set_keymap("n", "<leader>t", ":RnvimrToggle<CR>", { noremap = true })
    vim.api.nvim_set_keymap("n", "<leader>v", ":vsp | :RnvimrToggle<CR>", { noremap = true })
  end
}
