return {
  "stevearc/oil.nvim",
  lazy = false, -- needed early to take over netrw cleanly
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
    },
  },
}
