-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Switch to terminal mode when entering a terminal buffer (term://)
-- NOTE: "BufEnter" is emitted when a user focuses to an _existing_ terminal buffer
--  "TermOpen" when a new terminal buffer is created eg. with `:term`.
--  Odd that "BufEnter" is not emitted for a "term://" buffer after `:term`
vim.api.nvim_create_autocmd({ "BufEnter", "TermOpen" }, {
  callback = function()
    vim.cmd("startinsert")
  end,
  pattern = { "term://*" },
  group = vim.api.nvim_create_augroup("enter_term_mode_on_focus", { clear = true }),
})
