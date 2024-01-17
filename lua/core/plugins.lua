local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
	--themes
	"catppuccin/nvim",
	"AlexvZyl/nordic.nvim",
	"ellisonleao/gruvbox.nvim",
	--ui
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
	"nvim-lualine/lualine.nvim",
	--completion
	"nvim-treesitter/nvim-treesitter",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	--format
	{
		"stevearc/conform.nvim",
		opts = {},
	},
	--rust
	"mfussenegger/nvim-dap",
	"rcarriga/nvim-dap-ui",
	"simrat39/rust-tools.nvim",

	--mason
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { { "nvim-lua/plenary.nvim", "BurntSushi/ripgrep" } },
	},
	--other
	"fedepujol/move.nvim",
}

local opts = {}

require("lazy").setup(plugins, opts)
