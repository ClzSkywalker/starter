-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if vim.fn.executable("btop") == 1 then
  -- btop
  vim.keymap.set("n", "<leader>xb",
    function() require("lazyvim.util").float_term({ "btop" }, { esc_esc = false, ctrl_hjkl = false }) end,
    { desc = "btop" })
end

vim.keymap.set("n", "<leader>dfr", "<cmd> FlutterRun <CR>", { desc = "Run Flutter Apps" })
vim.keymap.set("n", "<leader>dfl", "<cmd> FlutterReload <CR>", { desc = "Reload Flutter Apps" })
vim.keymap.set("n", "<leader>dfs", "<cmd> FlutterRestart <CR>", { desc = "Restart Flutter Apps" })
vim.keymap.set("n", "<leader>dfc", "<cmd> FlutterLogClear <CR>", { desc = "Clear the log of Flutter Apps" })
vim.keymap.set("n", "<leader>dfd", "<cmd> FlutterDevices <CR>", { desc = "Check available device" })
vim.keymap.set("n", "<leader>dfq", "<cmd> FlutterQuit <CR>", { desc = "Stop Running Application" })
-- vim.keymap.set("n", "<leader>rt", "<cmd> !flutter_test.sh %:p<CR>", { desc = "run flutter test on current file" })