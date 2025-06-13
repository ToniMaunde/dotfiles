return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"c",
				"cpp",
				"lua",
				"vim",
				"vimdoc",
				"typescript",
				"javascript",
				"html",
				"css",
				"astro",
				"go",
				"json",
				"markdown",
				"markdown_inline",
				"sql",
				"svelte",
				"yaml",
				"xml",
				"rust",
				"nginx",
				"bash",
			},
			auto_install = false,
			ignore_install = {},
			sync_install = false,
			modules = {},
			highlight = { enable = true },
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<Enter>", -- set to `false` to disable one of the mappings
					node_incremental = "<Enter>",
					scope_incremental = false,
					node_decremental = "<Backspace>",
				},
			},
		})
	end,
}
