return {
	"conform.nvim",
	opts = {
		formatters = {
			tidy = {
				command = "tidy",
				args = {
					"-xml",
					"-m",
					"-i",
					"--indent-spaces",
					"4",
					"--vertical-space",
					"true",
					"-w",
					"0",
					"$FILENAME",
				},
				stdin = false,
			},
		},
		formatters_by_ft = {
			xml = { "tidy" },
			java = { "google-java-format" },
			go = { "gofumpt -w" },
		},
	},
}
