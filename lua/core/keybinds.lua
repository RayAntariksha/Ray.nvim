-- Set leader key
vim.g.mapleader = " "

-- The following is the default config for harpoon.
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = 'Add file to harpoon' })
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Toggle harpoon menu' })

vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = 'Open first item in harpoon' })
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = 'Open second item in harpoon' })
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = 'Open third item in harpoon' })
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = 'Open fourth item in harpoon' })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

-- Fzf lua config
vim.keymap.set("n", "<leader>ff", ":FzfLua files<CR>", { desc = 'Find files uzing Fzflua' })

-- Origami (code folding) config
vim.keymap.set("n", "m", function() require("origami").h() end)
vim.keymap.set("n", "n", function() require("origami").l() end)


vim.keymap.set("n", "<leader>e", ":Ex<CR>", { desc = 'Find files uzing Fzflua' })
vim.keymap.set("n", "<leader>j", ":lua vim.diagnostic.open_float()<CR>", { desc = 'Find files uzing Fzflua' })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
