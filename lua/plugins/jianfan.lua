return {
  "jiazhoulvke/jianfan",
  config = function()
    vim.keymap.set({ "v" }, "<c-t>", "<cmd>Tcn<CR>", { desc = "To Traditional" })
    vim.keymap.set({ "v" }, "<c-j>", "<cmd>Scn<CR>", { desc = "To Simplified" })
  end,
}
