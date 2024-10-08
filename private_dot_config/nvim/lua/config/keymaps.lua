-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "cp", "viwP", { noremap = true }) -- replace the current word with the last yanked one
vim.keymap.set("i", "jk", "<Esc>", { noremap = true })
vim.keymap.set("i", "kj", "<Esc>", { noremap = true })
-- Set ctrl+shift+v to paste from clipboard
vim.keymap.set({ "n", "v" }, "<C-S-v>", '"+P')
vim.keymap.set("c", "<C-S-v>", "<C-R>+")
vim.keymap.set("i", "<C-S-v>", '<ESC>l"+Pli')
