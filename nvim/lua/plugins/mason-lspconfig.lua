return {
	"williamboman/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"gopls",
			"lua_ls",
			"clangd",
			"astro",
			"rust_analyzer",
			"nginx_language_server",
			"bashls",
		},
	},
	enabled = true,
}
