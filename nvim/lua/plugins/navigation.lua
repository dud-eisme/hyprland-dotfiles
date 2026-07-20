return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
    },
  },
  -- flash.nvim now lives in plugins/ui.lua (was duplicated here, which made
  -- lazy.nvim load two competing specs for the same plugin/keymap).
}
