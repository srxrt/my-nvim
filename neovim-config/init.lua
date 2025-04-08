-- Set leader key
vim.g.mapleader = " "

-- Basic settings
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.tabstop = 4 -- 4 spaces for tabs
vim.opt.shiftwidth = 4 -- 4 spaces when indenting
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.termguicolors = true -- Enable true colors
vim.opt.clipboard = "unnamedplus" -- Use system clipboard

-- Keymaps
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })
