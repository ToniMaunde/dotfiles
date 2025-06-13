return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	opts = {
		ensure_installed = {
			"stylua",
			"goimports",
			"prettierd",
			"prettier",
			"codespell",
			"clang-format",
			"sqlfmt",
			"nginx-config-formatter",
			"shellcheck",
		},
		auto_update = false,
		run_on_start = true,
		start_delay = 3000,
		debounce_hours = 24,
	},
}
