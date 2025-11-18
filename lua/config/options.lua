-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.ai_cmp = false

vim.api.nvim_create_user_command("CopilotReviewDiff", function()
  local diff = vim.fn.system(
    "git diff --cached  -- . ':(exclude)packages/_common/src/tacI18n/*/**' ':(exclude)*.lock' '(exclude)*lock.json'"
  )
  require("CopilotChat").ask(diff, {
    system_prompt = "Speak Chinese. Review the diff code, check for any issues, and provide suggestions for improvement.",
  })
end, {})

vim.api.nvim_create_user_command("CopilotReviewLatestCommit", function()
  local diff = vim.fn.system(
    "git show HEAD -- . ':(exclude)packages/_common/src/tacI18n/*/**' ':(exclude)*.lock' ':(exclude)lock.json'"
  )
  require("CopilotChat").ask(diff, {
    system_prompt = "Speak Chinese. Review the diff code, check for any issues, and provide suggestions for improvement.",
  })
end, {})
