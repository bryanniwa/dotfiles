-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- replace the current word with the last yanked one
vim.keymap.set("n", "cp", "viwP", { noremap = true })

-- Convenience mappings to exit insert mode
vim.keymap.set("i", "jk", "<Esc>", { noremap = true })
vim.keymap.set("i", "kj", "<Esc>", { noremap = true })

-- Set ctrl+shift+v to paste from clipboard
vim.keymap.set({ "n", "v" }, "<C-S-v>", '"+P', { noremap = true })
vim.keymap.set("c", "<C-S-v>", "<C-R>+", { noremap = true })
vim.keymap.set("i", "<C-S-v>", '<ESC>l"+Pli', { noremap = true })

-- Convenience mappings for capitalization
vim.keymap.set("n", "<M-u>", "gul", { noremap = true })
vim.keymap.set("n", "<M-U>", "gUl", { noremap = true })
vim.keymap.set("v", "<M-u>", "gu", { noremap = true })
vim.keymap.set("v", "<M-U>", "gU", { noremap = true })

vim.keymap.set("n", "<leader>ms", function()
  Snacks.terminal("spotify_player")
end)
