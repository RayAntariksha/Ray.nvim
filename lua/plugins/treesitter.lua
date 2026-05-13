return{
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function ()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
}
