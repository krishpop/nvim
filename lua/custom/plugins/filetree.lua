-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

-- [[ Configure neo-tree ]]

vim.keymap.set('n', '<Space>nn', '<cmd>Neotree focus toggle position=left<cr>')
vim.keymap.set('n', '<Space>nf', '<cmd>Neotree focus toggle position=float<cr>')
vim.api.nvim_set_keymap('n', '<Space>gd', ":Neotree focus toggle position=float reveal_file=% reveal_force_cwd<cr>", {silent = true})

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require('neo-tree').setup {
      filesystem = {
        hide_dotfiles = false,
        hide_hidden = false,
        follow_current_file = true,
        always_show = {
          ".config"
        }
      }
    }
  end,
}


