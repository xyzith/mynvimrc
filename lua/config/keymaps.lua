-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>dc", ":call delete(expand('%')) | bdelete!")
vim.api.nvim_del_keymap("n", "<A-j>") -- remove fucking switch line
vim.keymap.set("n", "<leader>ac", ":Codeium Chat<CR>")

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
