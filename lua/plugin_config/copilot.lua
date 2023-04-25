
copilot = require("copilot")

copilot.setup {
  panel = {
    enabled = true,
    auto_refresh = false,
    keymap = {
      jump_next = "<c-j>",
      jump_prev = "<c-k>",
      accept = "<c-a>",
      refresh = "r",
      open = "<M-CR>",
    },
    layout = {
      position = "bottom", -- | top | left | right
      ratio = 0.4,
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = true,
    debounce = 75,
    keymap = {
      accept = "<c-a>",
      accept_word = false,
      accept_line = false,
      next = "<c-j>",
      prev = "<c-k>",
      dismiss = "<C-e>",
    },
  },
}


-- local opts = { noremap = true, silent = true }
-- local keymap = vim.keymap.set

-- [[ Configure copilot ]]
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""

-- require("copilot").setup({
--   suggestion = {
--     enabled = true,
--     auto_trigger = true,
--     debounce = 50,
--     keymap = {
--       accept = "<C-j>"
--     }
--   }
-- })
vim.keymap.set('n', '<Space>co', require("copilot.suggestion").toggle_auto_trigger, { silent = false, expr = true })

-- vim.api.nvim_set_keymap("i", "<C-J>", 'require("copilot.suggestion").accept', { silent = true, expr = true })
