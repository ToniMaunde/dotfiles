return {
	"ibhagwan/fzf-lua",
	enabled = false,
	lazy = true,
	opts = {},
	keys = {
		{
			"<leader><leader>",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "Find Open Buffers",
		},
		{
			"<leader>ff",
			function()
				require("fzf-lua").files()
			end,
			desc = "[F]ind [F]iles in Current Directory",
		},
		{
			"<leader>fg",
			function()
				require("fzf-lua").live_grep_native({ exec_empty_query = true })
			end,
			desc = "Grep Current Project",
		},
		{
			"<leader>f.",
			function()
				require("fzf-lua").lgrep_curbuf()
			end,
			desc = "Grep Current Buffer",
		},
	},
}
