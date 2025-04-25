return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			go = { "goimports", "gofmt" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
			css = { "prettierd", "prettier", stop_after_first = true },
			html = { "prettierd", "prettier", stop_after_first = true },
			astro = { "prettierd", "prettier", stop_after_first = true },
			c = { "clang-format" },
			cpp = { "clang-format" },
			sql = { "sqlfmt" },
			["*"] = { "codespell" },
			["_"] = { "trim_whitespace" },
			-- Set the log level. Use `:ConformInfo` to see the location of the log file.
			log_level = vim.log.levels.DEBUG,
			-- Conform will notify you when a formatter errors
			notify_on_error = true,
			-- Conform will notify you when no formatters are available for the buffer
			notify_no_formatters = true,
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
			lsp_format = "fallback",
		},
	},
}
