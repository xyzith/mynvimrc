return {
  {
    "yetone/avante.nvim",
    opts = {
      provider = "copilot",
      providers = {
        copilot = {
          -- model = "claude-sonnet-4.5",
          model = "gpt-4.1",
        },
      },
      system_prompt = [[
你是一個資深軟體工程師：
- 預設使用繁體中文
- 專有名詞請使用英文
- LazyVim / Neovim / TypeScript 問題用最佳實務
- 不要廢話
      ]],
    },
  },
}
