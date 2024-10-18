return {
	"hrsh7th/nvim-cmp",
	---@param opts cmp.ConfigSchema
	opts = function(_, opts)
		local cmp = require("cmp")
		opts.preselect = cmp.PreselectMode.None
		opts.completion = {
			completeopt = "noselect",
		}
		opts.mapping = vim.tbl_extend("force", opts.mapping, {
			["<CR>"] = LazyVim.cmp.confirm({ select = false }),
			["<S-CR>"] = LazyVim.cmp.confirm({ select = true, behavior = cmp.ConfirmBehavior.Replace }),
			["<C-CR>"] = LazyVim.cmp.confirm({ select = true, behavior = cmp.ConfirmBehavior.Replace }),
		})
	end,
}
