vim.g.mapleader = " "
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.keymap.set("i", "jk", "<Esc>")
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 8
vim.opt.ignorecase = true

-- vim.opt.wrap = false

-- move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- split screen vertically
vim.keymap.set("n", "ss", ":split<CR>")
vim.keymap.set("n", "sv", ":vsplit<CR>")

-- split screen mobility
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

-- split screen resizing
vim.keymap.set("n", "<leader>>", ":resize +4<CR>")
vim.keymap.set("n", "<leader><", ":resize -4<CR>")
vim.keymap.set("n", "<leader>+", ":vertical resize +4<CR>")
vim.keymap.set("n", "<leader>-", ":vertical resize -4<CR>")

--horizontal movements
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- switch buffers
vim.keymap.set("n", "<leader>.", ":bn<CR>")
vim.keymap.set("n", "<leader>,", ":bp<CR>")

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
