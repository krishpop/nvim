-- [[ Basic Keymaps ]]
--

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', '<Space>x', '<cmd>bp|bd #<cr>')
vim.keymap.set('n', '<Space>qd', '<cmd>q<cr>')
vim.keymap.set('n', '<Space>ww', '<cmd>w<cr>', { silent = true })
vim.keymap.set("n", "sh", "<C-w>h") -- Navigate to the split window on the immediate left.
vim.keymap.set("n", "sj", "<C-w>j") -- Navigate to the split window below.
vim.keymap.set("n", "sk", "<C-w>k") -- Navigate to the split window top.
vim.keymap.set("n", "sl", "<C-w>l") -- Navigate to the split window on the immediate right.
vim.keymap.set("n", "<C-n>", "<cmd>bn<cr>") -- Navigate to the split window on the immediate right.
vim.keymap.set("n", "<C-p>", "<cmd>bp<cr>") -- Navigate to the split window on the immediate right.
vim.keymap.set("n", ",<cr>", "<cmd>nohls<cr>") -- Navigate to the split window on the immediate right.
vim.keymap.set("t", "<C-k><C-j>", "<C-\\><C-n>") -- Exit terminal mode

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Set undotree keymap ]]
vim.keymap.set('n', '<Space>uu', '<cmd>UndotreeToggle<cr>')


