return {
  "kevinhwang91/rnvimr",
  config = function()
    vim.api.nvim_set_keymap("n", "<leader>bn", ":RnvimrToggle<CR>", { noremap = true })
    vim.api.nvim_set_keymap("n", "<leader>bv", ":vsp | :RnvimrToggle<CR>", { noremap = true })
  end,
}
