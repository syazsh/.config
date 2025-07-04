return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				javascriptreact = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				typescriptreact = { "prettierd", "prettier", stop_after_first = true },
				go = { "gofmt" },
			},
			-- formatters = {
			-- 	stylua = {
			-- 		prepend_args = { "--indent-width", "6" },
			-- 	},
			-- },
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true, -- fall back to LSP formatting if no formatter is defined
			},
		})
	end,
}
