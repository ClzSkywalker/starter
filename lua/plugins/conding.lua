return {

    -- extend auto completion
    -- {
    --   "hrsh7th/nvim-cmp",
    --   ---@param opts cmp.ConfigSchema
    --   opts = function(_, opts)
    --     local cmp = require("cmp")
    --     opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
    --       ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    --       ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
    --     })
    --   end,
    -- },
  
    -- scopes
    {
      "tiagovla/scope.nvim",
      event = "VeryLazy",
      opts = {},
    },
  }
  