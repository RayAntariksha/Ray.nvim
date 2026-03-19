return{
{
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.enable('lua-language-server')
        vim.lsp.enable('rust-analyzer')

    end
},
{
    "mason-org/mason.nvim",
    opts = {}
},
{
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    config = function()
        require("mason-lspconfig").setup {
            ensure_installed = { "lua_ls", "rust_analyzer" },
            automatic_enable = true
        }
    end
}
}
