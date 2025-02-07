-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.encoding = 'UTF-8'
vim.opt.relativenumber = false

for _, provider in ipairs({ "node", "perl", "python3", "ruby" }) do
    vim.g["loaded_" .. provider .. "_provider"] = 0
end

-- disable some extension providers
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0

-- disable some fanzy UI stuff when run in Neovide
if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_floating_blur = 0
  vim.g.neovide_floating_opacity = 90
  vim.opt.guifont = 'FiraCode Nerd Font:h13'
end

-- lsp autoformat
vim.g.autoformat=true
vim.b.autoformat=true
-- 解决nvim不在当前目录的问题：https://github.com/LazyVim/LazyVim/issues/1912
vim.g.root_spec = { "cwd" }

-- 系统剪切板
-- vim.g.clipboard='unnamedplus'
-- if vim.fn.has('wsl') then
-- 	vim.g.clipboard = {
-- 		name = 'WslClipboard',
-- 		copy = {
-- 			['+'] = '/mnt/c/Windows/System32/clip.exe',
-- 			['*'] = '/mnt/c/Windows/System32/clip.exe'
-- 		},
-- 		paste = {
-- 			['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
-- 			['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
-- 		},
-- 		cache_enabled = 0,
-- 	}
-- end

-- if vim.fn.has('wsl') then
-- 	vim.g.clipboard = {
-- 		name = 'WslClipboard',
-- 		copy = {
-- 			['+'] = 'win32yank.exe -i --crlf',
-- 			['*'] = 'win32yank.exe -i --crlf'
-- 		},
-- 		paste = {
-- 			['+'] = 'win32yank.exe -o --lf',
-- 			['*'] = 'win32yank.exe -o --lf',
-- 		},
-- 		cache_enabled = 0,
-- 	}
-- end