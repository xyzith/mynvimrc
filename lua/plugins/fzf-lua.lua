return {
  "ibhagwan/fzf-lua",
  cmd = "FzfLua",
  opts = function()
    local fzf = require("fzf-lua")
    local actions = fzf.actions

    return {
      files = {
        find_opts = [[-type f -not -path '*/tests/**' -printf '%P\n']],
        rg_opts = [[--color=never --files --hidden --follow -g "!tests"]],
        fd_opts = [[--color=never --type f --hidden --follow --exclude tests]],
        cwd_prompt = false,
        actions = {
          ["alt-i"] = { actions.toggle_ignore },
          ["alt-h"] = { actions.toggle_hidden },
        },
      },
    }
  end,
}
