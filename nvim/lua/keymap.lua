-- nvim-tree
vim.api.nvim_set_keymap("n", "<Leader><Space>", "<cmd>NvimTreeToggle<cr>", { noremap = true, silent = true })

-- File Find
local tel_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", tel_builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", tel_builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", tel_builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", tel_builtin.help_tags, {})
