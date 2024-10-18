return {
	"conform.nvim",
	opts = {
		formatters_by_ft = {
			xml = { "xmllint" },
			java = { "google-java-format" },
			go = { "gofumpt -w" },
		},
	},
}
