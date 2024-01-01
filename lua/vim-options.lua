vim.g.mapleader = " "
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.keymap.set('i' , 'jk' , '<Esc>')
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.scrolloff = 8
-- vim.opt.wrap = false

-- move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("i" , "<C-j>" , "<C-n>")

-- highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
