return {

  -- disable catppuccin
  { "catppuccin/nvim", name = "catppuccin", enabled = false },

  -- load github nvim theme
  { "projekt0n/github-nvim-theme" },

  -- load onedarkpro nvim theme
  { "olimorris/onedarkpro.nvim" },

  -- notify customization
  {
    "rcarriga/nvim-notify",
    opts = {
      stages = "fade_in_slide_out",
      timeout = 3000,
      render = "compact",
    }
  },

  -- git diff view
  {
    "sindrets/diffview.nvim",
    cmd = "DiffviewOpen",
  },

}
