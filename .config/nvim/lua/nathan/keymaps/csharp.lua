-- Load C# keymaps only when editing C# files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cs", -- cs for C#
  callback = function()
    local keymap = vim.keymap -- for conciseness

    -- C# specific keymaps
    keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", { desc = "Show C# LSP references" })
    keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to C# declaration" })
    keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { desc = "Go to C# definition" })
    keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", { desc = "Show C# LSP implementations" })
    keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", { desc = "Go to C# type definition" })
    keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename C# symbol" })
    keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", { desc = "Show C# buffer diagnostics" })
    keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show C# line diagnostics" })
    keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous C# diagnostic" })
    keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next C# diagnostic" })
    keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show C# documentation" })
    keymap.set("n", "<leader>rs", ":LspRestart<CR>", { desc = "Restart C# LSP" })
  end
})
