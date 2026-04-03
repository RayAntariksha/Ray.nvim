require("config.lazy")

-- Add this early in your init.lua or before telescope loads
if vim.fn.has("nvim-0.10") == 1 then
  vim.treesitter.language.ft_to_lang = vim.treesitter.language.ft_to_lang
    or function(ft) return ft end
end
require("core.keybinds")
require("core.options")
require("core.netrw")
require("lsp.lsp_setup")
