return {
  { -- Theme inspired by Atom
    'catppuccin/nvim',
    config = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
