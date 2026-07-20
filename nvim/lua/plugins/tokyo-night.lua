return {
  "folke/tokyonight.nvim",
  lazy = false, -- make sure it loads during startup
  priority = 1000,
  opts = {
    style = "storm", -- "storm", "moon", or "night"
    transparent = true, -- set to true if you want your terminal background to show through
    terminal_colors = true,
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd([[colorscheme tokyonight]])
  end,
}
