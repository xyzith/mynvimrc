return {
  "FabijanZulj/blame.nvim",
  config = function()
    vim.keymap.set({ "n" }, "<leader>gb", "<cmd>ToggleBlame virtual<CR>", { desc = "Toggle Blame" })
  end,
}
