--NOTE: Enforce good defaults
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- NOTE: Plugins

-- Oil.nvim
-- vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open Parent directory in Oil" })

-- Mini.*
vim.keymap.set("n", "\\", "<cmd>lua MiniFiles.open()<CR>", { desc = "Open Mini.files" })

vim.keymap.set("n", "<ESC>", "<cmd>lua MiniFiles.close()<CR>", { desc = "Close Mini.files" })

vim.keymap.set("n", "<leader>`", "<cmd>lua Snacks.zen()<CR>", { desc = "Open zen mode" })

vim.keymap.set("n", "<leader>2", "<cmd>lua Snacks.dim.enable()<CR>", { desc = "Dim the buffer" })

vim.keymap.set("n", "<leader>3", "<cmd>lua Snacks.dim.disable()<CR>", { desc = "Disable dim effect" })

-- Undotree
vim.keymap.set("n", "<leader>u", "<cmd>lua require('undotree').toggle()<CR>", { desc = "Open Undotree" })

-- Comform
vim.keymap.set("n", "<leader>fm", function()
	local current_buffer = vim.api.nvim_get_current_buf()
	require("conform").format({ bufnr = current_buffer, async = true, stop_after_first = true })
end, { noremap = true, desc = "Format the buffer" })

-- Which-key
vim.keymap.set("n", "<leader>?", function()
	require("which-key").show({ global = false })
end, { desc = "Buffer keymaps" })

-- NOTE: Diagnostic

vim.keymap.set("n", "[d", function()
	vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Go to previous diagnostic message" })

vim.keymap.set("n", "]d", function()
	vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Go to next diagnostic message" })

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

--NOTE: Quality of life
vim.keymap.set("t", "<leader><ESC>", "<C-\\><C-n>", { noremap = true, desc = "Go to INSERT mode" })
