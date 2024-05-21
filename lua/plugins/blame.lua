return {
  "FabijanZulj/blame.nvim",
  config = function()
    require("blame").setup({})
    vim.keymap.set({ "n" }, "<leader>gt", "<cmd>BlameToggle virtual<CR>", { desc = "Toggle Blame" })
  end,
}
