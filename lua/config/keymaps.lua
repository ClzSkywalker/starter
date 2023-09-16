-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if vim.fn.executable("btop") == 1 then
    -- btop
    vim.keymap.set("n", "<leader>xb", function() require("lazyvim.util").float_term({ "btop" }, { esc_esc = false, ctrl_hjkl = false }) end, { desc = "btop" })
  end
  