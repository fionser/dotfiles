-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	-- LSP
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	require("mason").setup()
	require("mason-lspconfig").setup()
	require("lspconfig").clangd.setup({
		inlay_hints = { enabled = true },
	})

	-- Formatter
	use({
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					cpp = { "clang-format" },
					lua = { "stylua" },
					-- Conform will run multiple formatters sequentially
					python = { "isort", "black" },
				},
				format_on_save = {
					-- These options will be passed to conform.format()
					timeout_ms = 500,
					lsp_fallback = true,
				},
			})
		end,
	})

	-- Search
	use({
		"nvim-telescope/telescope.nvim",
		-- brew install ripgrep
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- File Explorer
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
	})
	require("nvim-tree-config")

	-- Color Theme
	use({ "ellisonleao/gruvbox.nvim" })

	if packer_bootstrap then
		require("packer").sync()
	end
end)
