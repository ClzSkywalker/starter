-- 状态栏配置
return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      local function lsp_name(msg)
        msg = msg or "Inactive"
        local buf_clients = vim.lsp.get_active_clients()
        if next(buf_clients) == nil then
          if type(msg) == "boolean" or #msg == 0 then
            return "Inactive"
          end
          return msg
        end
        local buf_client_names = {}

        for _, client in pairs(buf_clients) do
          if client.name ~= "null-ls" then
            table.insert(buf_client_names, client.name)
          end
        end

        return table.concat(buf_client_names, ", ")
      end
      
      local mode = {
        "mode",
        fmt = function() return " " end,
      }
  
      local branch = {
        "branch",
        icon = "",
        padding = 1.5,
      }
  
      local spaces = {
        function() return "Tab size: " .. vim.api.nvim_buf_get_option(0, "shiftwidth") end,
        padding = 1.5,
      }
  
      local progress = {
        "progress",
        fmt = function() return "%P/%L" end,
      }
  
      opts.options = {
        icons_enabled = true,
        theme = "auto",
        globalstatus = true,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        always_divide_middle = true,
      }
      opts.sections.lualine_a = { mode }
      opts.sections.lualine_b = { branch }
      opts.sections.lualine_y = { spaces }
      opts.sections.lualine_z = { progress }
    end,
  }