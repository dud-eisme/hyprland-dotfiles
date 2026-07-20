vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "LSP Definition" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "LSP References" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })

-- LSP Formatting
vim.keymap.set("n", "<leader>gf", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "LSP Format" })
