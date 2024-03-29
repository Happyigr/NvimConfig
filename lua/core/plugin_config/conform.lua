require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		python = { "isort" },
		-- Use a sub-list to run only the first available formatter
		cpp = { "clang_format" },
		rust = { "rustfmt" },
		toml = { "taplo" },
		bash = { "beutysh" },
		css = { "prettier" },
		html = { "prettier" },
	},
})
