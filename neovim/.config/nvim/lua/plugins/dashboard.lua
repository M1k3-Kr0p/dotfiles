return { {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  opts = {
    theme = 'hyper',
    change_to_vcs_root = true,

  },
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
} } 
