return {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = { ".luarc.json", ".luarc.jsonc", ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", "selene.yml", ".git" },
	settings = {
		Lua = {
			diagnostics = {
				-- to handle the erroneous diagnostic message
				globals = { "vim", "require", "get_root", "buf_cache" }
			}
		}
	}
}
