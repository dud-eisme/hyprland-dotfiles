return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  event = "InsertEnter",
  dependencies = { "rafamadriz/friendly-snippets" },
  config = function()
    local ls = require("luasnip")
    require("luasnip.loaders.from_lua").load({ paths = vim.fn.stdpath("config") .. "/lua/plugins/snippets/" })
    require("luasnip.loaders.from_vscode").lazy_load()

    -- Keybindings
    vim.keymap.set({ "i", "s" }, "<C-k>", function()
      if ls.expandable() then
        ls.expand()
      elseif ls.jumpable(1) then
        ls.jump(1)
      end
    end, { silent = true })

    vim.keymap.set({ "i", "s" }, "<C-j>", function()
      if ls.jumpable(-1) then
        ls.jump(-1)
      end
    end, { silent = true })
  end,
}
