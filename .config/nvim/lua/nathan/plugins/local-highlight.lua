return {
	"tzachar/local-highlight.nvim",
	event = "VeryLazy",
	config = function()
		require("local-highlight").setup({
			insert_mode = true,
		})
	end,
}
