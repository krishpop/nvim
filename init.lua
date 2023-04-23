-- Set <space> as the leader key
-- See `:help mapleader`
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Setting options ]]
require("core.options")

-- [[ Setup Lazy.nvim and install packages ]]
require("plugins_setup")

-- [[ Basic Keymaps ]]
require("core.keymaps")

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- [[ Configure copilot ]]
require("plugin_config.copilot")

-- [[ Configure symbols-outline ]]
require("symbols-outline").setup()

-- [[ Configure lualine-copilot ]]
require('lualine').setup {
  sections = {
    lualine_x = {
      "copilot",
      "filetype",
      "fileformat",
      "encoding",
    }
  }
}

-- [[ Configure Telescope ]]
require("plugin_config.telescope")

-- [[ Configure Treesitter ]]
require("plugin_config.nvim-treesitter")

-- Diagnostic keymaps
require("plugin_config.diagnostics")

-- Setup neovim lua configuration
require('neodev').setup()

-- Setup LSP
require("plugin_config.lsp-settings")

-- nvim-cmp setup
require("plugin_config.nvim-cmp")

-- MY CUSTOM PACKAGES
-- [[ Setup lsp_copilot ]]
local lsp_copilot = require('lsp_copilot')
vim.keymap.set('n', '<leader>vq', lsp_copilot.select, { desc = 'Select current function' })


-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
