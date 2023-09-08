return {
  "codota/tabnine-nvim",
  build = "./dl_binaries.sh",
  config = function()
    require("tabnine").setup({
      disable_auto_comment = true,
      accept_keymap = "<C-]>",
      dismiss_keymap = "<C-\\>",
      debounce_ms = 400,
      suggestion_color = { gui = "#a8a8a8", cterm = 248 },
      exclude_filetypes = { "TelescopePrompt" },
      log_file_path = nil, -- absolute path to Tabnine log file
    })
  end,
}
