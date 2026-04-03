-- Set some basic options
vim.o.number = true --Show line numbers
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.scrolloff = 8
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.textwidth = 80
vim.o.wrap = true
vim.o.termguicolors = true
vim.opt.clipboard = "unnamedplus" --lets use the system clipboard for a seamless experience
-- Enable syntax highlighting and filetype detection
vim.filetype.plugin = true
vim.cmd([[set colorcolumn=80]])
