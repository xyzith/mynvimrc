return {
  "zbirenbaum/copilot.lua",
  opts = function()
    require("copilot").setup({
      disable_limit_reached_message = true,
    })
  end,
}
