-- [[ Configure copilot ]]
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""

require("copilot").setup({
  suggestion = {
    enabled = true,
    auto_trigger = true,
    debounce = 50,
    keymap = {
      accept = "<C-j>"
    }
  }
})
vim.keymap.set('n', '<Space>co', require("copilot.suggestion").toggle_auto_trigger, { silent = false, expr = true })

-- vim.api.nvim_set_keymap("i", "<C-J>", 'require("copilot.suggestion").accept', { silent = true, expr = true })
