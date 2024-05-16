return {
	"HiPhish/nvim-ts-rainbow2",
	event = { "BufReadPre", "BufNewFile" },
	-- event = "VeryLazy",
	config = function()
		require("nvim-treesitter.configs").setup({
			rainbow = {
				enable = true,
				extended_mode = true,
			},
		})
	end,
}
