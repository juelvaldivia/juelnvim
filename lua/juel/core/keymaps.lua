vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split window equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previus tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- Terminal
vim.keymap.set("n", "<leader>te", "<cmd>ToggleTerm<cr>")
vim.keymap.set("t", "jk", "<C-\\><C-n>", opts)

-- Folding
vim.keymap.set("n", "zR", require("ufo").openAllFolds)
vim.keymap.set("n", "zM", require("ufo").closeAllFolds)

-- java
keymap.set("n", "<leader>mcc", ":!mvn clean compile<CR>", { noremap = true })
keymap.set(
	"n",
	"<leader>tsr",
	'<cmd>ToggleTerm<CR><cmd>lua require("toggleterm").exec("mvn spring-boot:run")<CR>',
	{ noremap = true, silent = true }
)
keymap.set("n", "<leader>f5", ":lua require'dap'.continue()<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>f10", ":lua require'dap'.step_over()<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>f11", ":lua require'dap'.step_into()<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>f12", ":lua require'dap'.step_out()<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>", { noremap = true, silent = true })
keymap.set(
	"n",
	"<leader>dB",
	":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
	{ noremap = true, silent = true }
)
keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>dl", ":lua require'dap'.run_last()<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>du", ":lua require'dapui'.toggle()<CR>", { noremap = true, silent = true })
