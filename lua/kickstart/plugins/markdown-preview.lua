return {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  ft = { 'markdown' },
  build = function()
    vim.fn['mkdp#util#install']()
  end,
  config = function()
    -- Custom CSS
    vim.g.mkdp_markdown_css = '/home/marcio/Documenti/Obsidian/Campagna/.obsidian/snippets/Cose Mie.css'
  end,
}
