local present, lspsaga = pcall(require, "lspsaga")

local keymap = vim.keymap.set

if not present then
  return
end

lspsaga.init_lsp_saga {
  server_filetype_map = {
    typescript = "typescript",
  },
}

local opts = { noremap = true, silent = true }
keymap("n", "<leader>lf", "<cmd>Lspsaga lsp_finder<CR>", opts)
keymap("n", "<leader>lp", "<cmd>Lspsaga peek_definition<CR>", opts)
keymap("n", "<leader>lr", "<cmd>Lspsaga rename<CR>", opts)
keymap("n", "<leader>lc", "<cmd>Lspsaga code_action<CR>", opts)
keymap("n", "<leader>ld", "<cmd>Lspsaga hover_doc<CR>", opts)
keymap("n", "<leader>ll", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
keymap("n", "<leader>lo", "<cmd>LSoutlineToggle<CR>", opts)
