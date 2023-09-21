-- 用于与NeoVim中的测试交互的可扩展框架
return {
  "nvim-neotest/neotest",
  -- dependencies = {
  --   "nvim-neotest/neotest-go",
  --   "rouge8/neotest-rust",
  -- },
  event = 'BufEnter',
  opts = {
    adapters = {
      ["neotest-go"] = {},
      ["neotest-rust"] = {},
    },
  },
}
