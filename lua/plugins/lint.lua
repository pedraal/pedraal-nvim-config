return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			-- lua = { "luacheck" },
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			vue = { "eslint_d" },
		}
		vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "TextChanged" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
