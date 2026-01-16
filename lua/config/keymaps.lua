-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

vim.api.nvim_create_user_command("AvanteReviewLatestCommit", function()
  local diff = vim.fn.system(
    "git show HEAD -- . ':(exclude)packages/_common/src/tacI18n/*/**' ':(exclude)*.lock' ':(exclude)lock.json'"
  )
  -- Use AvanteAsk to review the latest commit diff
  vim.cmd("AvanteAsk " .. [[Review the latest commit code diff for any issues and concrete suggestions:\n]] .. diff)
end, {})

vim.api.nvim_create_user_command("AvanteReviewDiff", function()
  local diff = vim.fn.system(
    "git diff --cached  -- . ':(exclude)packages/_common/src/tacI18n/*/**' ':(exclude)*.lock' '(exclude)*lock.json'"
  )
  -- Use AvanteAsk to review the staged (cached) diff
  vim.cmd(
    "AvanteAsk " .. [[Review the staged (cached) git diff for issues and concrete improvement suggestions:\n]] .. diff
  )
end, {})

vim.keymap.set("n", "<leader>dc", ":call delete(expand('%')) | bdelete!")
vim.api.nvim_del_keymap("n", "<A-j>") -- remove fucking switch line

local lsp_enabled = true

local function toggle_lsp()
  if lsp_enabled then
    for _, client in ipairs(vim.lsp.get_clients()) do
      vim.lsp.stop_client(client.id)
    end
    print("LSPs Disabled")
  else
    -- 重新啟動 LSP 客戶端的邏輯
    print("LSPs Enabled")
  end
  lsp_enabled = not lsp_enabled
end

vim.keymap.set("n", "<leader>tl", toggle_lsp)
