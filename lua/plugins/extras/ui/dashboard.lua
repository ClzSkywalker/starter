-- dashboard
return {
    {
        "goolord/alpha-nvim",
        opts = function(_, dashboard)
          dashboard.config.opts.setup = function()
            local alpha_start_group = vim.api.nvim_create_augroup("AlphaStart", { clear = true })
            vim.api.nvim_create_autocmd("TabNewEntered", {
              callback = function()
                require("alpha").start()
              end,
              group = alpha_start_group,
            })
            vim.api.nvim_create_autocmd("User", {
              pattern = "AlphaReady",
              desc = "disable tabline for alpha",
              callback = function()
                vim.opt.showtabline = 0
              end,
            })
            vim.api.nvim_create_autocmd("BufUnload", {
              buffer = 0,
              desc = "enable tabline after alpha",
              callback = function()
                vim.opt.showtabline = 2
              end,
            })
          end
          local button = dashboard.button("m", " " .. " Mason", ":Mason<CR>")
          button.opts.hl = "AlphaButtons"
          button.opts.hl_shortcut = "AlphaShortcut"
          table.insert(dashboard.section.buttons.val, 9, button)
        end
      }
}