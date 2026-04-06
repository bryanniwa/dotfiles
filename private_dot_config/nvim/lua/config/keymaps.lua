-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "cp", "viwP", { noremap = true, desc = "Replace word with clipboard" })

-- Convenience mappings to exit insert mode
vim.keymap.set("i", "jk", "<Esc>", { noremap = true })
vim.keymap.set("i", "kj", "<Esc>", { noremap = true })

-- Set ctrl+shift+v to paste from clipboard
vim.keymap.set({ "n", "v" }, "<C-S-v>", '"+P', { noremap = true })
vim.keymap.set("c", "<C-S-v>", "<C-R>+", { noremap = true })
vim.keymap.set("i", "<C-S-v>", '<ESC>l"+Pli', { noremap = true })

vim.keymap.set("n", "<leader>jj", function()
  Snacks.terminal("jjui")
end, { noremap = true, desc = "JJ UI" })
