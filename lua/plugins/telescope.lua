return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			local actions = require("telescope.actions")

			require("telescope").setup({
				defaults = {
					path_display = { "truncate" },
					sorting_strategy = "ascending",
					layout_config = {
						horizontal = {
							prompt_position = "top",
							preview_width = 0.55,
						},
						vertical = {
							mirror = false,
						},
						width = 0.87,
						height = 0.80,
						preview_cutoff = 120,
					},
					mappings = {
						i = {
							["<C-n>"] = actions.cycle_history_next,
							["<C-p>"] = actions.cycle_history_prev,
							["<C-j>"] = actions.move_selection_next,
							["<C-k>"] = actions.move_selection_previous,
						},
					},
				},
				pickers = {
					find_files = {
						theme = "dropdown",
						previewer = false,
						hidden = true,
					},
					buffers = {
						theme = "dropdown",
						previewer = false,
					},
					vertical_find_files = { -- New picker configuration
						theme = "dropdown",
						previewer = false,
						hidden = true,
						attach_mappings = function(_, map)
							map("i", "<CR>", actions.file_vsplit)
							map("n", "<CR>", actions.file_vsplit)
							return true
						end,
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							initial_mode = "normal",
							sorting_strategy = "ascending",
							layout_strategy = "horizontal",
							layout_config = {
								horizontal = {
									width = 0.5,
									height = 0.4,
									preview_width = 0.6,
								},
							},
						}),
					},
				},
			})

			local builtin = require("telescope.builtin")

			-- Regular file finding
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

			-- Vertical split file finding
			vim.keymap.set("n", "<leader>vff", function()
				builtin.find_files({
					attach_mappings = function(_, map)
						map("i", "<CR>", actions.file_vsplit)
						map("n", "<CR>", actions.file_vsplit)
						return true
					end,
				})
			end, { desc = "Find files (vertical split)" })

			require("telescope").load_extension("ui-select")
		end,
	},
}
