return {
  "jiazhoulvke/jianfan",
  config = function()
    vim.keymap.set({ "v" }, "<leader>tf", "<cmd>Tcn<CR>", { desc = "To Traditional" })
    vim.keymap.set({ "v" }, "<leader>tj", "<cmd>Scn<CR>", { desc = "To Simplified" })
  end,
}
