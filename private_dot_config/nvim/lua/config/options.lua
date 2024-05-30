-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Neovide specific options
if vim.g.neovide then
  -- vim.o.guifont = "CaskaydiaCove Nerd Font Mono:h12"
  -- vim.o.guifont = "FiraCode Nerd Font:h12"
  vim.o.guifont = "Cascadia Code NF:h12.5"
  vim.g.neovide_refresh_rate = 75
  vim.g.clipboard = false -- Disable the neovide clipboard since it seems to add ^M when pasting to dos files
end

vim.g.python3_host_prog = "~/.virtualenvs/nvim/bin/python"

vim.g.lazyvim_python_ruff = "ruff"
