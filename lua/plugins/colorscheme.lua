return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,     -- Ensure it loads first
  },
  {
    'navarasu/onedark.nvim',
  },
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
