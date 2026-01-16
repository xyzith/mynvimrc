-- Configure Neo-tree plugin
return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("neo-tree").setup({
      event_handlers = {
        {
          event = "file_opened",
          handler = function()
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
      filesystem = {
        hijack_netrw_behavior = "open_default",
      },
    })
  end,
}

