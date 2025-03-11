-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "extensions.conf" },
  desc = "Set filetype to asterisk for extensions.conf files",
  callback = function()
    vim.bo.filetype = "asterisk"
  end,
  group = vim.api.nvim_create_augroup("asterisk", { clear = true }),
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.env",
  desc = "Disable disagnostics for .env files",
  callback = function(ev)
    vim.diagnostic.enable(false, { bufnr = ev.buf })
  end,
  group = vim.api.nvim_create_augroup("disable_diagnostics_for_env_files", { clear = true }),
})
