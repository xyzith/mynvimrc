return {
  "kelly-lin/ranger.nvim",
  config = function()
    require("ranger-nvim").setup({ replace_netrw = true })
    vim.api.nvim_set_keymap("n", "<leader>ef", "", {
      noremap = true,
      callback = function()
        require("ranger-nvim").open(true)
      end,
    })
  end,
}

-- return {
--   "kevinhwang91/rnvimr",
--   init = function() end,
--   config = function()
--     vim.keymap.set("n", "<leader>ef", ":RnvimrToggle<CR>")
--     vim.grnvimr_action = {
--       ["<C-t>"] = "NvimEdit tabedit",
--       ["<C-x>"] = "NvimEdit split",
--       ["<C-v>"] = "NvimEdit vsplit",
--       ["<C-e>"] = "NvimEdit edit",
--       gw = "JumpNvimCwd",
--       yw = "EmitRangerCwd",
--     }
--     vim.g.rnvimr_ranger_cmd = {
--       "ranger",
--       "--cmd=set preview_images true",
--     }
--   end,
-- }
