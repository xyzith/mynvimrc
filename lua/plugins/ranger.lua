return {
  "kelly-lin/ranger.nvim",
  config = function()
    require("ranger-nvim").setup({
      enable_cmds = true,
    })
    vim.api.nvim_set_keymap("n", "<leader>ef", "", {
      noremap = true,
      callback = function()
        require("ranger-nvim").open(true)
      end,
    })
  end,
}
