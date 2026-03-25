return{
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "storm", -- Choose your preferred style: "storm", "moon", "night", or "day"
    transparent = true, -- Enable general transparency
    styles = {
      sidebars = "transparent", -- Make sidebars (like nvim-tree) transparent
      floats = "transparent",  -- Make floating windows transparent
    },
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight")
  end,
}

