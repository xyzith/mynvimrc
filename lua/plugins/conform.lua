return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    -- 合併 formatter 設定 (不覆蓋原本格式器)
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    opts.formatters_by_ft.json = { "fixjson" }
    opts.formatters_by_ft.jsonc = { "fixjson" }
  end,
}
