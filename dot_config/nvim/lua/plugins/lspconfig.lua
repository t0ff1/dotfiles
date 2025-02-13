return {
	"neovim/nvim-lspconfig",
	keys = {
		{ "<C-k>", mode = { "i" }, false },
	},
	opts = {
		servers = {
			lua_ls = {
				keys = { { "<C-k>", mode = { "i" }, false } },
			},
			gopls = {
				settings = {
					gopls = {
						hints = {
							assignVariableTypes = false,
							compositeLiteralFields = false,
							compositeLiteralTypes = false,
							constantValues = false,
							functionTypeParameters = false,
							parameterNames = false,
							rangeVariableTypes = false,
						},
					},
				},
				keys = { { "<C-k>", mode = { "i" }, false } },
			},
			jdtls = {
				hints = {
					parameterNames = false,
				},
				keys = {
					{ "<C-k>", mode = { "i" }, false },
				},
			},
			jsonls = {
				settings = {
					json = {
						format = {
							tabSize = 4,
							shiftWidth = 4,
						},
					},
				},
			},
		},
	},
}
