-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "cp", "ciw<C-r>0<ESC>", { noremap = true }) -- replace the current word with the last yanked one
vim.keymap.set("i", "jk", "<Esc>", { noremap = true }) -- Exit insert mode with jk
vim.keymap.set("i", "kj", "<Esc>", { noremap = true }) -- Exit insert mode with kj
