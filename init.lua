require("config.lazy")
require("toggletermconfig")
require("ibl").setup()
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

        -- Enable syntax highlighting and filetype detection
        vim.filetype.plugin = true

        -- Set leader key
        vim.g.mapleader = " "

        local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

require('lualine').setup {
  options = { theme = 'onedark'}
  }
