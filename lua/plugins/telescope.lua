return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>fd", builtin.live_grep, { desc = "Live grep" })
			vim.keymap.set("n" , "<leader>ff" , builtin.find_files , { desc = "Find Files"})
			vim.keymap.set(
				"n",
				"<leader>fh",
				"<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git'}})<cr>",
				{desc = "Advanced Find Files"}
			)
			require("telescope").setup({
				defaults = {
					file_ignore_patterns = {
						'^Music/',
						'^Library/',
						'^Movies/',
						'node_modules/'
					}
				}
			})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
