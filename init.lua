require("config.lazy")
require("ibl").setup()
require("keybinds")

-- Set some basic options
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.textwidth = 80
vim.o.wrap = true
vim.o.termguicolors = true
vim.cmd [[colorscheme tokyonight]]
vim.opt.clipboard = "unnamedplus" --lets use the system clipboard for a seamless experience
-- Enable syntax highlighting and filetype detection
vim.filetype.plugin = true
