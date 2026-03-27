return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			go = { "goimports", "gofmt", lsp_format = "fallback" },
			javascript = { "prettierd", "oxfmt", stop_after_first = true, lsp_format = "fallback" },
			typescript = { "prettierd", "oxfmt", stop_after_first = true, lsp_format = "fallback" },
			css = { "oxfmt", stop_after_first = true, lsp_format = "fallback" },
			html = { "prettierd", "oxfmt", stop_after_first = true, lsp_format = "fallback" },
			astro = { "prettierd", "oxfmt", stop_after_first = true, lsp_format = "fallback" },
			c = { "clang-format", lsp_format = "fallback" },
			cpp = { "clang-format", lsp_format = "fallback" },
			sql = { "sqlfmt" },
			-- ["*"] = { },
			["_"] = { "trim_whitespace" },
			-- Set the log level. Use `:ConformInfo` to see the location of the log file.
			-- log_level = vim.log.levels.DEBUG,
			-- -- Conform will notify you when a formatter errors
			-- notify_on_error = true,
			-- -- -- Conform will notify you when no formatters are available for the buffer
			-- notify_no_formatters = true,
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
			lsp_format = "fallback",
		},
	},
}
