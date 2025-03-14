-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require('lazy').setup({
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to force a plugin to be loaded.
  --

  -- modular approach: using `require 'path/name'` will
  -- include a plugin definition from file lua/path/name.lua

  require 'kickstart/plugins/gitsigns',

  require 'kickstart/plugins/which-key',

  require 'kickstart/plugins/telescope',

  require 'kickstart/plugins/lspconfig',

  require 'kickstart/plugins/conform',

  require 'kickstart/plugins/cmp',

  require 'kickstart/plugins/onedark',

  require 'kickstart/plugins/todo-comments',

  require 'kickstart/plugins/mini',
  require 'kickstart/plugins/treesitter',

  require 'kickstart/plugins/render-markdown',

  require 'kickstart/plugins/precognition',

  -- require 'kickstart/plugins/markdown-preview',

  require 'kickstart/plugins/wilder',

  require 'kickstart/plugins/fzy-lua-native',

  require 'kickstart/plugins/copilot',

  require 'kickstart/plugins/nvim-web-devicons',

  require 'kickstart/plugins/wakatime',

  require 'kickstart/plugins/nvim-tree',

  require 'kickstart/plugins/barbar',

  require 'kickstart/plugins/startup',

  require 'kickstart/plugins/focushere',

  require 'kickstart/plugins/auto-session',

  require 'kickstart/plugins/swagger',

  require 'kickstart/plugins/betterterm',

  require 'kickstart/plugins/scope',

  require 'kickstart/plugins/trouble',

  require 'kickstart/plugins/cellular-automaton',

  require 'kickstart/plugins/typr',

  require 'kickstart/plugins/avante',

  require 'kickstart/plugins/git-conflict',

  require 'kickstart/plugins/fugitive',

  require 'kickstart/plugins/chameleon',

  require 'kickstart/plugins/java',
  -- require 'kickstart/plugins/snacks',
  -- The following two comments only work if you have downloaded the kickstart repo, not just copy pasted the
  -- init.lua. If you want these files, they are in the repository, so you can just download them and
  -- place them in the correct locations.

  -- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for Kickstart
  --
  --  Here are some example plugins that I've included in the Kickstart repository.
  --  Uncomment any of the lines below to enable them (you will need to restart nvim).
  --
  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  require 'kickstart.plugins.autopairs',
  require 'kickstart.plugins.neo-tree',

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  --    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
  -- { import = 'custom.plugins' },
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

require('java').setup()

local config = {
  cmd = {
    '/usr/', -- Explicitly use this JDK
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xmx1G',
    '--add-modules=ALL-SYSTEM',
    '--add-opens',
    'java.base/java.util=ALL-UNNAMED',
    '--add-opens',
    'java.base/java.lang=ALL-UNNAMED',
    '-jar',
    '/path/to/jdtls/plugins/org.eclipse.equinox.launcher_*.jar',
    '-configuration',
    '/path/to/jdtls/config_linux',
    '-data',
    workspace_dir,
  },
  -- root_dir = require('jdtls.setup').find_root { 'gradlew', 'mvnw', '.git' },
}

require('lspconfig').jdtls.setup { config }
-- vim: ts=2 sts=2 sw=2 et
