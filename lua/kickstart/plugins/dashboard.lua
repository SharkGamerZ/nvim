return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  opts = {
    sections = {
      { section = 'header' },
      { section = 'keys', gap = 1, padding = 1 },
      { section = 'startup' },
      {
        section = 'terminal',
        cmd = 'pokemon-colorscripts -r --no-title; sleep .1',
        random = 10,
        pane = 2,
        indent = 4,
        height = 30,
      },
    },
  },
}
