-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- -------------------------------------
-- HOP
-- -------------------------------------
vim.keymap.set("n", "<leader>h", "<cmd>HopPattern<CR>", { desc = "Hop" })

-- -------------------------------------
-- Surround
-- -------------------------------------
vim.keymap.set({ "n", "v", "i", "t" }, "<C-t>", "<cmd>ToggleTerm<CR>", { desc = "Terminal" })
