-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- go back file or position
vim.keymap.set("n", "gb", "<C-^>", { desc = "Go back file or position" })

-- Delete all buffers but the current one --
vim.keymap.set("n", "<leader>bq", ":%bd|e#|bd#<CR>", { desc = "Delete other buffers but the current one" })

-- Position cursor at the middle of the screen after scrolling half page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- save file
vim.keymap.set("n", "<leader>fs", ":w<CR>", { desc = "Save file" })
