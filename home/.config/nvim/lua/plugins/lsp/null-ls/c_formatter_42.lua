local null_ls = require("null-ls")
local helpers = require("null-ls.helpers")

return {
	name = "c_formatter_42",
	meta = {
		url = "https://github.com/dawnbeen/c_formatter_42",
		description = "C language prettier that conforms to 42 norm v3.",
	},
	method = null_ls.methods.FORMATTING,
	filetypes = { "c" },
	generator = helpers.formatter_factory({
		command = "c_formatter_42",
		args = { "$FILENAME" },
		to_temp_file = true,
	}),
}
