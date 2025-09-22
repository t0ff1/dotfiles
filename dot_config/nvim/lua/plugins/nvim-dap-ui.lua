return {
	"rcarriga/nvim-dap-ui",
	dependencies = { "nvim-neotest/nvim-nio" },
	keys = {
		{
			"<C-E>",
			function()
				require("dapui").eval()
			end,
			desc = "Eval",
			mode = { "n", "v" },
		},
	},
	"theHamsta/nvim-dap-virtual-text",
	opts = {
		enable = false,
	},
}
