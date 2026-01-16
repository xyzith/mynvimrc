-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Macro recording notification popup
do
  local function show_macro_notification(is_start)
    -- Message and color group
    local msg, title, border_hl, normal_hl
    if is_start then
      msg = "● Macro Recording Started"
      title = "  MACRO"
      border_hl = "DiagnosticOk"
      normal_hl = "DiagnosticOk"
    else
      msg = "■ Macro Recording Stopped"
      title = "󰏤  MACRO"
      border_hl = "DiagnosticError"
      normal_hl = "DiagnosticError"
    end
    -- Create a scratch buffer (always wiped)
    local buf = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, { "", msg, "" })
    vim.api.nvim_set_option_value("modifiable", false, { buf = buf })
    -- Determine floating window size/position
    local width = math.max(30, #msg + 6)
    local height = 3
    local ui = vim.api.nvim_list_uis()[1]
    local row = math.floor((ui.height - height) / 2)
    local col = math.floor((ui.width - width) / 2)
    -- Open floating window
    local win = vim.api.nvim_open_win(buf, false, {
      relative = "editor",
      width = width,
      height = height,
      row = row,
      col = col,
      anchor = "NW",
      style = "minimal",
      border = { "─", "─", "─", "│", "─", "─", "─", "│" },
      title = title,
    })
    vim.api.nvim_set_option_value(
      "winhighlight",
      string.format("NormalFloat:%s,FloatBorder:%s", normal_hl, border_hl),
      { win = win }
    )
    -- Auto-close after 600ms
    vim.defer_fn(function()
      if vim.api.nvim_win_is_valid(win) then
        pcall(vim.api.nvim_win_close, win, true)
      end
    end, 600)
  end

  -- Set autocmds for macro recording events
  vim.api.nvim_create_autocmd("RecordingEnter", {
    callback = function()
      show_macro_notification(true)
    end,
    desc = "Popup Macro Recording Notification (start)",
  })
  vim.api.nvim_create_autocmd("RecordingLeave", {
    callback = function()
      show_macro_notification(false)
    end,
    desc = "Popup Macro Recording Notification (stop)",
  })
end
