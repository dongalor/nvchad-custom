local present, lspsaga = pcall(require, "lspsaga")

local keymap = vim.keymap.set

if not present then
  return
end

lspsaga.init_lsp_saga()
-- lsp finder to find the cursor word definition and reference
keymap("n", "gh", require("lspsaga.finder").lsp_finder, { silent = true,noremap = true })
-- or use command LspSagaFinder
keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true,noremap = true})

local codeaction = require("lspsaga.codeaction")

-- code action
keymap("n", "<leader>ca", codeaction.code_action, { silent = true,noremap = true })
keymap("v", "<leader>ca", function()
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
    codeaction.range_code_action()
end, { silent = true,noremap =true })
--
-- Rename
keymap("n", "<leader>cr", "<cmd>Lspsaga rename<CR>", { silent = true })

-- or use command
keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true,noremap = true })
keymap("v", "<leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true,noremap = true })

-- show hover doc and press twice will jumpto hover window
keymap("n", "K", require("lspsaga.hover").render_hover_doc, { silent = true })
-- or use command
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })


