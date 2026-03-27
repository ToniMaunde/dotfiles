return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter")
		treesitter.setup()
		treesitter.install({
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
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
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
			callback = function()
				vim.treesitter.start()
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
