vim.g.mapleader = " "

-- Keybinding for showing the hover tooltip
vim.api.nvim_set_keymap(
	"n",
	"gh",
	":lua vim.lsp.buf.hover()<CR>",
	{ desc = "Show tooltip", noremap = true, silent = true }
)
-- Set timeout for key sequences to 300ms
vim.o.timeoutlen = 3000
-- Bind `kk` to exit Insert mode
vim.api.nvim_set_keymap("i", "kk", "<Esc>", { noremap = true, silent = true })
--
-- Map keys to create new lines above or below the cursor
vim.api.nvim_set_keymap("n", "<leader>o", "o<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>O", "O<Esc>", { noremap = true, silent = true })

-- LazyVim configuration example for opening terminal
vim.api.nvim_set_keymap("n", "<leader>t", ":term<CR>", { noremap = true, silent = true })

-- Map to toggle wrapping with <Leader>cw
vim.api.nvim_set_keymap("n", "<Leader>cw", ":set wrap!<CR>", {
	noremap = true,
	silent = true,
})

vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })

vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>")
vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>")
