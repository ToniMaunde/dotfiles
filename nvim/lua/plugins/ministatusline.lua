return {
	"echasnovski/mini.statusline",
	version = false,
	config = function()
		local statusline = require("mini.statusline")

		local languages = {
			["md"] = "markdown",
			["go"] = "golang",
			["ts"] = "typescript",
			["js"] = "javascript",
			["sql"] = "squeal",
			["py"] = "python",
			["rs"] = "rust",
			["sh"] = "bash",
			["cpp"] = "cpp",
		}

		statusline.setup({
			content = {
				active = function()
					local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
					local git = MiniStatusline.section_git({ trunc_width = 40 })
					local diff = MiniStatusline.section_diff({ trunc_width = 75 })
					local diagnostics = MiniStatusline.section_diagnostics({ trunc_width = 75 })
					local lsp = MiniStatusline.section_lsp({ trunc_width = 75 })
					local location = MiniStatusline.section_location({ trunc_width = 75 })
					local short_location = string.sub(location, 1, 5)
					local search = MiniStatusline.section_searchcount({ trunc_width = 75 })
					local filename = MiniStatusline.section_filename({ trunc_width = 140 })
					local fileinfo = MiniStatusline.section_fileinfo({ trunc_width = 120 })

					-- Get the name of the active buffer
					local current_buffer_name = vim.api.nvim_buf_get_name(0)

					-- Initialize the new file information variable
					local custom_file_info

					-- Check if the active is a [No name] buffer
					if current_buffer_name == "" then
						custom_file_info = ""
					else
						-- Grab the language's icon from the name of the active buffer
						local extension_icon = string.sub(fileinfo, 1, 4)

						-- Grab the file extension. Eg.: Lua will be lua, javascript will be js, etc.
						local short_file_extension_name = current_buffer_name:match("%.([^%.]+)$")

						-- Check if the active buffer is for a file
						if short_file_extension_name ~= nil then
							-- Override the extension_icon if the file extension is "mdx"
							if short_file_extension_name == "mdx" then
								extension_icon = ""
							end

							if short_file_extension_name == "sh" then
								extension_icon = ""
							end

							if short_file_extension_name == "c" then
								extension_icon = ""
							end

							if short_file_extension_name == "cpp" then
								extension_icon = ""
							end

							-- Attempt to match the short file extension name to a longer/custom name from the languages' table
							-- Default to the short name if there is no match
							local long_file_extension_name = languages[short_file_extension_name]
							local definitive_file_extension_name = long_file_extension_name ~= nil
									and long_file_extension_name
								or short_file_extension_name

							-- Concatenate the language's icon with the longer or short file extension name
							custom_file_info = extension_icon .. " " .. definitive_file_extension_name
						else
							custom_file_info = ""
						end
					end

					return MiniStatusline.combine_groups({
						{ hl = mode_hl, strings = { string.upper(mode) } },
						{ hl = "MiniStatuslineDevinfo", strings = { git, diff, diagnostics, lsp } },
						"%<", -- Mark general truncate point
						{ hl = "MiniStatuslineFilename", strings = { filename } },
						"%=", -- End left alignment
						{ hl = "MiniStatuslineFileinfo", strings = { custom_file_info } },
						{ hl = mode_hl, strings = { search, short_location } },
					})
				end,
			},
		})
	end,
}
