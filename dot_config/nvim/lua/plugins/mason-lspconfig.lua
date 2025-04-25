return {
	"williamboman/mason-lspconfig.nvim",
	opts = {
		ensure_installed = { "gopls", "lua-ls", "clangd", "astro", "rust_analyzer" },
	},
	enabled = true,
}
